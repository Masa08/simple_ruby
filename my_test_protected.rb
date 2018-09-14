# https://qiita.com/tbpgr/items/6f1c0c7b77218f74c63e

require 'english'

class ScopeResearchClass
    def public_method
        'public'
    end

    def use_protected(other)
        puts other.protected_method
    end

    def use_private(other)
        other.private_method
        rescue
        puts $ERROR_INFO
    end

    def internal_use_private_and_protected
        puts protected_method
        puts private_method
    end

    def internal_use_private_and_protected_with_reciever
        puts self.protected_method
        self.private_method
        rescue
        puts $ERROR_INFO
    end

    protected

    def protected_method
        'protected'
    end

    private

    def private_method
        'private'
    end
end

pc1 = ScopeResearchClass.new
pc2 = ScopeResearchClass.new

# private / protected ともに内部から利用可能
pc1.internal_use_private_and_protected

# # protectedはレシーバーつきでも呼び出し可能
# # privateはレシーバーつきだと呼び出せず
pc1.internal_use_private_and_protected_with_reciever


# # protected メソッドは自クラスに別インスタンスを渡しても呼び出し可能
pc1.use_protected(pc2)

# # private メソッドは自クラスに別インスタンスを渡した場合、レシーバーの指定が出来ないのでエラーになる
pc1.use_private(pc2)