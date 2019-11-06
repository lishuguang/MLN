---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by XiongFangyu.
--- DateTime: 2018/9/20 上午10:42
---
local _class = {}
_class._version = '1.0'
_class._classname = 'ItemGenerator'
_class.imgs = {'http://pic24.photophoto.cn/20120730/0036036815619480_b.jpg',
               'http://img.momocdn.com/feedvideo/B4/9A/B49AB85D-34C8-0063-9F05-B23678D41D6C20180425_L.webp',
               'http://hbimg.b0.upaiyun.com/087a7d5929ea6e2ce672d8cdf46ad1df19b069e352532-iq1dEg_fw658',
               'http://img5.imgtn.bdimg.com/it/u=3604858831,3357525860&fm=27&gp=0.jpg'}

function ItemGenerator()
    return _class
end

function _class:newItem(index)
    local r = math.random(4)
    local ret = {
        iconName = _class.imgs[r],
        title = tostring(index)..'     '..tostring(r),
        subtitle = "hahahah",
    }
    ret.height = r * 100
    return ret
end

function _class:insert(src, count)
    for i = 1, count do
        table.insert(src, self:newItem(i))
    end
end

return _class