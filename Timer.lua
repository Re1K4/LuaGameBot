--///////////////////////////////////////////////////////////////////////////
--FUNCTION
--///////////////////////////////////////////////////////////////////////////

--///////////////////////////////////////////////////////////////////////////
--CLASS
--///////////////////////////////////////////////////////////////////////////

Timer={}
Timer.new=function()
    local obj={}
    obj.setTime=0
    obj.usedFlg=0
    
    --method
    obj.set=function(self)
        if self.usedFlg==0 then
            self.setTime=os.time()
            self.usedFlg=1
        end
    end
    obj.distance=function(self)
        return os.time()-self.setTime
    end
    obj.reset=function(self)
        self.usedFlg=0
    end

    return obj
end