require 'nn'
require 'cunn'
require 'cudnn'
require 'image'
local TF = require 'transforms'

local model = paths.dofile('models/fullModel2.lua')
model = model:cuda()

local im1 = image.load('samples/00001_img1.ppm' )
local im2 = image.load('samples/00001_img2.ppm' )
local im = torch.cat(im1, im2, 1)
im = TF.normalize(im)
im = im:resize(1, im:size(1), im:size(2), im:size(3)):cuda()

local flow = model:forward(im)

print('Flow obtained ', flow)
