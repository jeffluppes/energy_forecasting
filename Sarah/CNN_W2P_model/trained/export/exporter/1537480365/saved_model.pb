ÆĮ
ö Ķ 
:
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
y
Enter	
data"T
output"T"	
Ttype"

frame_namestring"
is_constantbool( "
parallel_iterationsint

)
Exit	
data"T
output"T"	
Ttype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
$

LogicalAnd
x

y

z

!
LoopCond	
input


output

p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
;
Maximum
x"T
y"T
z"T"
Ttype:

2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
;
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	
2
NextIteration	
data"T
output"T"	
Ttype

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
D
Relu
features"T
activations"T"
Ttype:
2	
E
Relu6
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
-
Tanh
x"T
y"T"
Ttype:

2
{
TensorArrayGatherV3

handle
indices
flow_in
value"dtype"
dtypetype"
element_shapeshape:
Y
TensorArrayReadV3

handle	
index
flow_in
value"dtype"
dtypetype
d
TensorArrayScatterV3

handle
indices

value"T
flow_in
flow_out"	
Ttype
9
TensorArraySizeV3

handle
flow_in
size
Ž
TensorArrayV3
size

handle
flow"
dtypetype"
element_shapeshape:"
dynamic_sizebool( "
clear_after_readbool("$
identical_element_shapesbool( "
tensor_array_namestring 
`
TensorArrayWriteV3

handle	
index

value"T
flow_in
flow_out"	
Ttype
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.8.02v1.8.0-0-g93bc2e20728ŪĻ

global_step/Initializer/zerosConst*
value	B	 R *
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
k
global_step
VariableV2*
_class
loc:@global_step*
shape: *
dtype0	*
_output_shapes
: 

global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
_output_shapes
: *
T0	*
_class
loc:@global_step
j
global_step/readIdentityglobal_step*
_output_shapes
: *
T0	*
_class
loc:@global_step
n
PlaceholderPlaceholder*
dtype0*'
_output_shapes
:’’’’’’’’’1*
shape:’’’’’’’’’1
Y
ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
’’’’’’’’’
k

ExpandDims
ExpandDimsPlaceholderExpandDims/dim*
T0*+
_output_shapes
:’’’’’’’’’1
g
SqueezeSqueeze
ExpandDims*'
_output_shapes
:’’’’’’’’’1*
squeeze_dims
*
T0
b
Reshape/shapeConst*!
valueB"’’’’1      *
dtype0*
_output_shapes
:
`
ReshapeReshapeSqueezeReshape/shape*
T0*+
_output_shapes
:’’’’’’’’’1
J
rnn/RankConst*
value	B :*
dtype0*
_output_shapes
: 
Q
rnn/range/startConst*
value	B :*
dtype0*
_output_shapes
: 
Q
rnn/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Z
	rnn/rangeRangernn/range/startrnn/Rankrnn/range/delta*
_output_shapes
:
d
rnn/concat/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
Q
rnn/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
u

rnn/concatConcatV2rnn/concat/values_0	rnn/rangernn/concat/axis*
N*
_output_shapes
:*
T0
e
rnn/transpose	TransposeReshape
rnn/concat*
T0*+
_output_shapes
:1’’’’’’’’’
F
	rnn/ShapeShapernn/transpose*
_output_shapes
:*
T0
a
rnn/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
c
rnn/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
c
rnn/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Į
rnn/strided_sliceStridedSlice	rnn/Shapernn/strided_slice/stackrnn/strided_slice/stack_1rnn/strided_slice/stack_2*
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
e
#rnn/GRUCellZeroState/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 

rnn/GRUCellZeroState/ExpandDims
ExpandDimsrnn/strided_slice#rnn/GRUCellZeroState/ExpandDims/dim*
_output_shapes
:*
T0
d
rnn/GRUCellZeroState/ConstConst*
_output_shapes
:*
valueB:*
dtype0
b
 rnn/GRUCellZeroState/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
“
rnn/GRUCellZeroState/concatConcatV2rnn/GRUCellZeroState/ExpandDimsrnn/GRUCellZeroState/Const rnn/GRUCellZeroState/concat/axis*
T0*
N*
_output_shapes
:
e
 rnn/GRUCellZeroState/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

rnn/GRUCellZeroState/zerosFillrnn/GRUCellZeroState/concat rnn/GRUCellZeroState/zeros/Const*
T0*'
_output_shapes
:’’’’’’’’’
g
%rnn/GRUCellZeroState/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 

!rnn/GRUCellZeroState/ExpandDims_1
ExpandDimsrnn/strided_slice%rnn/GRUCellZeroState/ExpandDims_1/dim*
T0*
_output_shapes
:
f
rnn/GRUCellZeroState/Const_1Const*
_output_shapes
:*
valueB:*
dtype0
H
rnn/Shape_1Shapernn/transpose*
_output_shapes
:*
T0
c
rnn/strided_slice_1/stackConst*
_output_shapes
:*
valueB: *
dtype0
e
rnn/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
e
rnn/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ė
rnn/strided_slice_1StridedSlicernn/Shape_1rnn/strided_slice_1/stackrnn/strided_slice_1/stack_1rnn/strided_slice_1/stack_2*
shrink_axis_mask*
_output_shapes
: *
Index0*
T0
H
rnn/Shape_2Shapernn/transpose*
T0*
_output_shapes
:
c
rnn/strided_slice_2/stackConst*
dtype0*
_output_shapes
:*
valueB:
e
rnn/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
e
rnn/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ė
rnn/strided_slice_2StridedSlicernn/Shape_2rnn/strided_slice_2/stackrnn/strided_slice_2/stack_1rnn/strided_slice_2/stack_2*
Index0*
T0*
shrink_axis_mask*
_output_shapes
: 
T
rnn/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B : 
j
rnn/ExpandDims
ExpandDimsrnn/strided_slice_2rnn/ExpandDims/dim*
_output_shapes
:*
T0
S
	rnn/ConstConst*
valueB:*
dtype0*
_output_shapes
:
S
rnn/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
t
rnn/concat_1ConcatV2rnn/ExpandDims	rnn/Constrnn/concat_1/axis*
T0*
N*
_output_shapes
:
T
rnn/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
b
	rnn/zerosFillrnn/concat_1rnn/zeros/Const*
T0*'
_output_shapes
:’’’’’’’’’
J
rnn/timeConst*
value	B : *
dtype0*
_output_shapes
: 
×
rnn/TensorArrayTensorArrayV3rnn/strided_slice_1*/
tensor_array_namernn/dynamic_rnn/output_0*
dtype0*
_output_shapes

:: *$
element_shape:’’’’’’’’’*
identical_element_shapes(
Ų
rnn/TensorArray_1TensorArrayV3rnn/strided_slice_1*.
tensor_array_namernn/dynamic_rnn/input_0*
dtype0*
_output_shapes

:: *$
element_shape:’’’’’’’’’*
identical_element_shapes(
Y
rnn/TensorArrayUnstack/ShapeShapernn/transpose*
T0*
_output_shapes
:
t
*rnn/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
v
,rnn/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
v
,rnn/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
 
$rnn/TensorArrayUnstack/strided_sliceStridedSlicernn/TensorArrayUnstack/Shape*rnn/TensorArrayUnstack/strided_slice/stack,rnn/TensorArrayUnstack/strided_slice/stack_1,rnn/TensorArrayUnstack/strided_slice/stack_2*
shrink_axis_mask*
_output_shapes
: *
Index0*
T0
d
"rnn/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
d
"rnn/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
ø
rnn/TensorArrayUnstack/rangeRange"rnn/TensorArrayUnstack/range/start$rnn/TensorArrayUnstack/strided_slice"rnn/TensorArrayUnstack/range/delta*#
_output_shapes
:’’’’’’’’’
ī
>rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3rnn/TensorArray_1rnn/TensorArrayUnstack/rangernn/transposernn/TensorArray_1:1*
_output_shapes
: *
T0* 
_class
loc:@rnn/transpose
O
rnn/Maximum/xConst*
_output_shapes
: *
value	B :*
dtype0
[
rnn/MaximumMaximumrnn/Maximum/xrnn/strided_slice_1*
_output_shapes
: *
T0
Y
rnn/MinimumMinimumrnn/strided_slice_1rnn/Maximum*
T0*
_output_shapes
: 
]
rnn/while/iteration_counterConst*
_output_shapes
: *
value	B : *
dtype0

rnn/while/EnterEnterrnn/while/iteration_counter*
T0*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
: 

rnn/while/Enter_1Enterrnn/time*
T0*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
: 

rnn/while/Enter_2Enterrnn/TensorArray:1*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
: *
T0
¬
rnn/while/Enter_3Enterrnn/GRUCellZeroState/zeros*
parallel_iterations *'

frame_namernn/while/while_context*'
_output_shapes
:’’’’’’’’’*
T0
n
rnn/while/MergeMergernn/while/Enterrnn/while/NextIteration*
_output_shapes
: : *
T0*
N
t
rnn/while/Merge_1Mergernn/while/Enter_1rnn/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
t
rnn/while/Merge_2Mergernn/while/Enter_2rnn/while/NextIteration_2*
T0*
N*
_output_shapes
: : 

rnn/while/Merge_3Mergernn/while/Enter_3rnn/while/NextIteration_3*
N*)
_output_shapes
:’’’’’’’’’: *
T0
^
rnn/while/LessLessrnn/while/Mergernn/while/Less/Enter*
_output_shapes
: *
T0
Ŗ
rnn/while/Less/EnterEnterrnn/strided_slice_1*'

frame_namernn/while/while_context*
_output_shapes
: *
T0*
is_constant(*
parallel_iterations 
d
rnn/while/Less_1Lessrnn/while/Merge_1rnn/while/Less_1/Enter*
T0*
_output_shapes
: 
¤
rnn/while/Less_1/EnterEnterrnn/Minimum*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
: 
\
rnn/while/LogicalAnd
LogicalAndrnn/while/Lessrnn/while/Less_1*
_output_shapes
: 
L
rnn/while/LoopCondLoopCondrnn/while/LogicalAnd*
_output_shapes
: 

rnn/while/SwitchSwitchrnn/while/Mergernn/while/LoopCond*
T0*"
_class
loc:@rnn/while/Merge*
_output_shapes
: : 

rnn/while/Switch_1Switchrnn/while/Merge_1rnn/while/LoopCond*
T0*$
_class
loc:@rnn/while/Merge_1*
_output_shapes
: : 

rnn/while/Switch_2Switchrnn/while/Merge_2rnn/while/LoopCond*
T0*$
_class
loc:@rnn/while/Merge_2*
_output_shapes
: : 
®
rnn/while/Switch_3Switchrnn/while/Merge_3rnn/while/LoopCond*:
_output_shapes(
&:’’’’’’’’’:’’’’’’’’’*
T0*$
_class
loc:@rnn/while/Merge_3
S
rnn/while/IdentityIdentityrnn/while/Switch:1*
_output_shapes
: *
T0
W
rnn/while/Identity_1Identityrnn/while/Switch_1:1*
T0*
_output_shapes
: 
W
rnn/while/Identity_2Identityrnn/while/Switch_2:1*
_output_shapes
: *
T0
h
rnn/while/Identity_3Identityrnn/while/Switch_3:1*'
_output_shapes
:’’’’’’’’’*
T0
f
rnn/while/add/yConst^rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Z
rnn/while/addAddrnn/while/Identityrnn/while/add/y*
T0*
_output_shapes
: 
Ä
rnn/while/TensorArrayReadV3TensorArrayReadV3!rnn/while/TensorArrayReadV3/Enterrnn/while/Identity_1#rnn/while/TensorArrayReadV3/Enter_1*
dtype0*'
_output_shapes
:’’’’’’’’’
¹
!rnn/while/TensorArrayReadV3/EnterEnterrnn/TensorArray_1*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:*
T0
ä
#rnn/while/TensorArrayReadV3/Enter_1Enter>rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
: 
¹
:rnn/gru_cell/gates/kernel/Initializer/random_uniform/shapeConst*
valueB"       *,
_class"
 loc:@rnn/gru_cell/gates/kernel*
dtype0*
_output_shapes
:
«
8rnn/gru_cell/gates/kernel/Initializer/random_uniform/minConst*
valueB
 *„)³¾*,
_class"
 loc:@rnn/gru_cell/gates/kernel*
dtype0*
_output_shapes
: 
«
8rnn/gru_cell/gates/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *„)³>*,
_class"
 loc:@rnn/gru_cell/gates/kernel*
dtype0
ó
Brnn/gru_cell/gates/kernel/Initializer/random_uniform/RandomUniformRandomUniform:rnn/gru_cell/gates/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

: *
T0*,
_class"
 loc:@rnn/gru_cell/gates/kernel

8rnn/gru_cell/gates/kernel/Initializer/random_uniform/subSub8rnn/gru_cell/gates/kernel/Initializer/random_uniform/max8rnn/gru_cell/gates/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@rnn/gru_cell/gates/kernel*
_output_shapes
: 

8rnn/gru_cell/gates/kernel/Initializer/random_uniform/mulMulBrnn/gru_cell/gates/kernel/Initializer/random_uniform/RandomUniform8rnn/gru_cell/gates/kernel/Initializer/random_uniform/sub*,
_class"
 loc:@rnn/gru_cell/gates/kernel*
_output_shapes

: *
T0

4rnn/gru_cell/gates/kernel/Initializer/random_uniformAdd8rnn/gru_cell/gates/kernel/Initializer/random_uniform/mul8rnn/gru_cell/gates/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@rnn/gru_cell/gates/kernel*
_output_shapes

: 

rnn/gru_cell/gates/kernel
VariableV2*
shape
: *
dtype0*
_output_shapes

: *,
_class"
 loc:@rnn/gru_cell/gates/kernel
Ņ
 rnn/gru_cell/gates/kernel/AssignAssignrnn/gru_cell/gates/kernel4rnn/gru_cell/gates/kernel/Initializer/random_uniform*
T0*,
_class"
 loc:@rnn/gru_cell/gates/kernel*
_output_shapes

: 
n
rnn/gru_cell/gates/kernel/readIdentityrnn/gru_cell/gates/kernel*
T0*
_output_shapes

: 
¢
)rnn/gru_cell/gates/bias/Initializer/ConstConst*
_output_shapes
: *
valueB *  ?**
_class 
loc:@rnn/gru_cell/gates/bias*
dtype0

rnn/gru_cell/gates/bias
VariableV2*
shape: *
dtype0*
_output_shapes
: **
_class 
loc:@rnn/gru_cell/gates/bias
½
rnn/gru_cell/gates/bias/AssignAssignrnn/gru_cell/gates/bias)rnn/gru_cell/gates/bias/Initializer/Const*
T0**
_class 
loc:@rnn/gru_cell/gates/bias*
_output_shapes
: 
f
rnn/gru_cell/gates/bias/readIdentityrnn/gru_cell/gates/bias*
T0*
_output_shapes
: 
Į
>rnn/gru_cell/candidate/kernel/Initializer/random_uniform/shapeConst*
valueB"      *0
_class&
$"loc:@rnn/gru_cell/candidate/kernel*
dtype0*
_output_shapes
:
³
<rnn/gru_cell/candidate/kernel/Initializer/random_uniform/minConst*
valueB
 *JQŚ¾*0
_class&
$"loc:@rnn/gru_cell/candidate/kernel*
dtype0*
_output_shapes
: 
³
<rnn/gru_cell/candidate/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *JQŚ>*0
_class&
$"loc:@rnn/gru_cell/candidate/kernel
’
Frnn/gru_cell/candidate/kernel/Initializer/random_uniform/RandomUniformRandomUniform>rnn/gru_cell/candidate/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:*
T0*0
_class&
$"loc:@rnn/gru_cell/candidate/kernel

<rnn/gru_cell/candidate/kernel/Initializer/random_uniform/subSub<rnn/gru_cell/candidate/kernel/Initializer/random_uniform/max<rnn/gru_cell/candidate/kernel/Initializer/random_uniform/min*
T0*0
_class&
$"loc:@rnn/gru_cell/candidate/kernel*
_output_shapes
: 
¤
<rnn/gru_cell/candidate/kernel/Initializer/random_uniform/mulMulFrnn/gru_cell/candidate/kernel/Initializer/random_uniform/RandomUniform<rnn/gru_cell/candidate/kernel/Initializer/random_uniform/sub*
T0*0
_class&
$"loc:@rnn/gru_cell/candidate/kernel*
_output_shapes

:

8rnn/gru_cell/candidate/kernel/Initializer/random_uniformAdd<rnn/gru_cell/candidate/kernel/Initializer/random_uniform/mul<rnn/gru_cell/candidate/kernel/Initializer/random_uniform/min*
_output_shapes

:*
T0*0
_class&
$"loc:@rnn/gru_cell/candidate/kernel

rnn/gru_cell/candidate/kernel
VariableV2*0
_class&
$"loc:@rnn/gru_cell/candidate/kernel*
shape
:*
dtype0*
_output_shapes

:
ā
$rnn/gru_cell/candidate/kernel/AssignAssignrnn/gru_cell/candidate/kernel8rnn/gru_cell/candidate/kernel/Initializer/random_uniform*
T0*0
_class&
$"loc:@rnn/gru_cell/candidate/kernel*
_output_shapes

:
v
"rnn/gru_cell/candidate/kernel/readIdentityrnn/gru_cell/candidate/kernel*
_output_shapes

:*
T0
Ŗ
-rnn/gru_cell/candidate/bias/Initializer/zerosConst*
valueB*    *.
_class$
" loc:@rnn/gru_cell/candidate/bias*
dtype0*
_output_shapes
:

rnn/gru_cell/candidate/bias
VariableV2*
_output_shapes
:*.
_class$
" loc:@rnn/gru_cell/candidate/bias*
shape:*
dtype0
Ķ
"rnn/gru_cell/candidate/bias/AssignAssignrnn/gru_cell/candidate/bias-rnn/gru_cell/candidate/bias/Initializer/zeros*
T0*.
_class$
" loc:@rnn/gru_cell/candidate/bias*
_output_shapes
:
n
 rnn/gru_cell/candidate/bias/readIdentityrnn/gru_cell/candidate/bias*
T0*
_output_shapes
:
u
rnn/while/gru_cell/concat/axisConst^rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
³
rnn/while/gru_cell/concatConcatV2rnn/while/TensorArrayReadV3rnn/while/Identity_3rnn/while/gru_cell/concat/axis*
T0*
N*'
_output_shapes
:’’’’’’’’’

rnn/while/gru_cell/MatMulMatMulrnn/while/gru_cell/concatrnn/while/gru_cell/MatMul/Enter*'
_output_shapes
:’’’’’’’’’ *
T0
Č
rnn/while/gru_cell/MatMul/EnterEnterrnn/gru_cell/gates/kernel/read*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes

: *
T0*
is_constant(

rnn/while/gru_cell/BiasAddBiasAddrnn/while/gru_cell/MatMul rnn/while/gru_cell/BiasAdd/Enter*
T0*'
_output_shapes
:’’’’’’’’’ 
Ć
 rnn/while/gru_cell/BiasAdd/EnterEnterrnn/gru_cell/gates/bias/read*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
: *
T0*
is_constant(
s
rnn/while/gru_cell/SigmoidSigmoidrnn/while/gru_cell/BiasAdd*'
_output_shapes
:’’’’’’’’’ *
T0
o
rnn/while/gru_cell/ConstConst^rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
y
"rnn/while/gru_cell/split/split_dimConst^rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
·
rnn/while/gru_cell/splitSplit"rnn/while/gru_cell/split/split_dimrnn/while/gru_cell/Sigmoid*
T0*
	num_split*:
_output_shapes(
&:’’’’’’’’’:’’’’’’’’’

rnn/while/gru_cell/mulMulrnn/while/gru_cell/splitrnn/while/Identity_3*'
_output_shapes
:’’’’’’’’’*
T0
w
 rnn/while/gru_cell/concat_1/axisConst^rnn/while/Identity*
dtype0*
_output_shapes
: *
value	B :
¹
rnn/while/gru_cell/concat_1ConcatV2rnn/while/TensorArrayReadV3rnn/while/gru_cell/mul rnn/while/gru_cell/concat_1/axis*'
_output_shapes
:’’’’’’’’’*
T0*
N

rnn/while/gru_cell/MatMul_1MatMulrnn/while/gru_cell/concat_1!rnn/while/gru_cell/MatMul_1/Enter*
T0*'
_output_shapes
:’’’’’’’’’
Ī
!rnn/while/gru_cell/MatMul_1/EnterEnter"rnn/gru_cell/candidate/kernel/read*'

frame_namernn/while/while_context*
_output_shapes

:*
T0*
is_constant(*
parallel_iterations 

rnn/while/gru_cell/BiasAdd_1BiasAddrnn/while/gru_cell/MatMul_1"rnn/while/gru_cell/BiasAdd_1/Enter*
T0*'
_output_shapes
:’’’’’’’’’
É
"rnn/while/gru_cell/BiasAdd_1/EnterEnter rnn/gru_cell/candidate/bias/read*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:
o
rnn/while/gru_cell/TanhTanhrnn/while/gru_cell/BiasAdd_1*
T0*'
_output_shapes
:’’’’’’’’’

rnn/while/gru_cell/mul_1Mulrnn/while/gru_cell/split:1rnn/while/Identity_3*'
_output_shapes
:’’’’’’’’’*
T0
r
rnn/while/gru_cell/sub/xConst^rnn/while/Identity*
_output_shapes
: *
valueB
 *  ?*
dtype0

rnn/while/gru_cell/subSubrnn/while/gru_cell/sub/xrnn/while/gru_cell/split:1*
T0*'
_output_shapes
:’’’’’’’’’

rnn/while/gru_cell/mul_2Mulrnn/while/gru_cell/subrnn/while/gru_cell/Tanh*
T0*'
_output_shapes
:’’’’’’’’’

rnn/while/gru_cell/addAddrnn/while/gru_cell/mul_1rnn/while/gru_cell/mul_2*
T0*'
_output_shapes
:’’’’’’’’’

-rnn/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV33rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enterrnn/while/Identity_1rnn/while/gru_cell/addrnn/while/Identity_2*
T0*)
_class
loc:@rnn/while/gru_cell/add*
_output_shapes
: 
ō
3rnn/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnterrnn/TensorArray*
T0*)
_class
loc:@rnn/while/gru_cell/add*
parallel_iterations *
is_constant(*
_output_shapes
:*'

frame_namernn/while/while_context
h
rnn/while/add_1/yConst^rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
`
rnn/while/add_1Addrnn/while/Identity_1rnn/while/add_1/y*
T0*
_output_shapes
: 
X
rnn/while/NextIterationNextIterationrnn/while/add*
T0*
_output_shapes
: 
\
rnn/while/NextIteration_1NextIterationrnn/while/add_1*
T0*
_output_shapes
: 
z
rnn/while/NextIteration_2NextIteration-rnn/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
t
rnn/while/NextIteration_3NextIterationrnn/while/gru_cell/add*
T0*'
_output_shapes
:’’’’’’’’’
I
rnn/while/ExitExitrnn/while/Switch*
_output_shapes
: *
T0
M
rnn/while/Exit_1Exitrnn/while/Switch_1*
T0*
_output_shapes
: 
M
rnn/while/Exit_2Exitrnn/while/Switch_2*
_output_shapes
: *
T0
^
rnn/while/Exit_3Exitrnn/while/Switch_3*
T0*'
_output_shapes
:’’’’’’’’’

&rnn/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3rnn/TensorArrayrnn/while/Exit_2*"
_class
loc:@rnn/TensorArray*
_output_shapes
: 

 rnn/TensorArrayStack/range/startConst*
dtype0*
_output_shapes
: *
value	B : *"
_class
loc:@rnn/TensorArray

 rnn/TensorArrayStack/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :*"
_class
loc:@rnn/TensorArray
Ų
rnn/TensorArrayStack/rangeRange rnn/TensorArrayStack/range/start&rnn/TensorArrayStack/TensorArraySizeV3 rnn/TensorArrayStack/range/delta*"
_class
loc:@rnn/TensorArray*#
_output_shapes
:’’’’’’’’’

(rnn/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3rnn/TensorArrayrnn/TensorArrayStack/rangernn/while/Exit_2*$
element_shape:’’’’’’’’’*"
_class
loc:@rnn/TensorArray*
dtype0*+
_output_shapes
:1’’’’’’’’’
U
rnn/Const_1Const*
_output_shapes
:*
valueB:*
dtype0
L

rnn/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
S
rnn/range_1/startConst*
value	B :*
dtype0*
_output_shapes
: 
S
rnn/range_1/deltaConst*
_output_shapes
: *
value	B :*
dtype0
b
rnn/range_1Rangernn/range_1/start
rnn/Rank_1rnn/range_1/delta*
_output_shapes
:
f
rnn/concat_2/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
S
rnn/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
}
rnn/concat_2ConcatV2rnn/concat_2/values_0rnn/range_1rnn/concat_2/axis*
T0*
N*
_output_shapes
:

rnn/transpose_1	Transpose(rnn/TensorArrayStack/TensorArrayGatherV3rnn/concat_2*
T0*+
_output_shapes
:’’’’’’’’’1

-dense/kernel/Initializer/random_uniform/shapeConst*
valueB"      *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
:

+dense/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *ųKĘ¾*
_class
loc:@dense/kernel

+dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *ųKĘ>*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
Ģ
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
T0*
_class
loc:@dense/kernel*
dtype0*
_output_shapes

:
Ī
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
ą
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
_output_shapes

:*
T0*
_class
loc:@dense/kernel
Ņ
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes

:
}
dense/kernel
VariableV2*
_class
loc:@dense/kernel*
shape
:*
dtype0*
_output_shapes

:

dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform*
T0*
_class
loc:@dense/kernel*
_output_shapes

:
u
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel*
_output_shapes

:

dense/bias/Initializer/zerosConst*
_output_shapes
:*
valueB*    *
_class
loc:@dense/bias*
dtype0
q

dense/bias
VariableV2*
dtype0*
_output_shapes
:*
_class
loc:@dense/bias*
shape:

dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
T0*
_class
loc:@dense/bias*
_output_shapes
:
k
dense/bias/readIdentity
dense/bias*
T0*
_class
loc:@dense/bias*
_output_shapes
:
m
dense/MatMulMatMulrnn/while/Exit_3dense/kernel/read*
T0*'
_output_shapes
:’’’’’’’’’
i
dense/BiasAddBiasAdddense/MatMuldense/bias/read*
T0*'
_output_shapes
:’’’’’’’’’
S

dense/ReluReludense/BiasAdd*'
_output_shapes
:’’’’’’’’’*
T0
Z
dropout/IdentityIdentity
dense/Relu*'
_output_shapes
:’’’’’’’’’*
T0
£
/dense_1/kernel/Initializer/random_uniform/shapeConst*
valueB"      *!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
:

-dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *óµ¾*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 

-dense_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *óµ>*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
Ņ
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
T0*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes

:
Ö
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
č
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_1/kernel*
_output_shapes

:*
T0
Ś
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes

:

dense_1/kernel
VariableV2*
shape
:*
dtype0*
_output_shapes

:*!
_class
loc:@dense_1/kernel
¦
dense_1/kernel/AssignAssigndense_1/kernel)dense_1/kernel/Initializer/random_uniform*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes

:
{
dense_1/kernel/readIdentitydense_1/kernel*!
_class
loc:@dense_1/kernel*
_output_shapes

:*
T0

dense_1/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
:
u
dense_1/bias
VariableV2*
dtype0*
_output_shapes
:*
_class
loc:@dense_1/bias*
shape:

dense_1/bias/AssignAssigndense_1/biasdense_1/bias/Initializer/zeros*
T0*
_class
loc:@dense_1/bias*
_output_shapes
:
q
dense_1/bias/readIdentitydense_1/bias*
T0*
_class
loc:@dense_1/bias*
_output_shapes
:
q
dense_1/MatMulMatMuldropout/Identitydense_1/kernel/read*
T0*'
_output_shapes
:’’’’’’’’’
o
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*
T0*'
_output_shapes
:’’’’’’’’’
Y
dense_1/Relu6Relu6dense_1/BiasAdd*'
_output_shapes
:’’’’’’’’’*
T0
£
/dense_2/kernel/Initializer/random_uniform/shapeConst*
valueB"      *!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
:

-dense_2/kernel/Initializer/random_uniform/minConst*
valueB
 *óµ¾*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 

-dense_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *óµ>*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
Ņ
7dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_2/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:*
T0*!
_class
loc:@dense_2/kernel
Ö
-dense_2/kernel/Initializer/random_uniform/subSub-dense_2/kernel/Initializer/random_uniform/max-dense_2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
: 
č
-dense_2/kernel/Initializer/random_uniform/mulMul7dense_2/kernel/Initializer/random_uniform/RandomUniform-dense_2/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes

:
Ś
)dense_2/kernel/Initializer/random_uniformAdd-dense_2/kernel/Initializer/random_uniform/mul-dense_2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes

:

dense_2/kernel
VariableV2*
dtype0*
_output_shapes

:*!
_class
loc:@dense_2/kernel*
shape
:
¦
dense_2/kernel/AssignAssigndense_2/kernel)dense_2/kernel/Initializer/random_uniform*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes

:
{
dense_2/kernel/readIdentitydense_2/kernel*
_output_shapes

:*
T0*!
_class
loc:@dense_2/kernel

dense_2/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *
_class
loc:@dense_2/bias
u
dense_2/bias
VariableV2*
shape:*
dtype0*
_output_shapes
:*
_class
loc:@dense_2/bias

dense_2/bias/AssignAssigndense_2/biasdense_2/bias/Initializer/zeros*
T0*
_class
loc:@dense_2/bias*
_output_shapes
:
q
dense_2/bias/readIdentitydense_2/bias*
_class
loc:@dense_2/bias*
_output_shapes
:*
T0
n
dense_2/MatMulMatMuldense_1/Relu6dense_2/kernel/read*
T0*'
_output_shapes
:’’’’’’’’’
o
dense_2/BiasAddBiasAdddense_2/MatMuldense_2/bias/read*'
_output_shapes
:’’’’’’’’’*
T0
W
dense_2/ReluReludense_2/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’
^
dropout_1/IdentityIdentitydense_2/Relu*'
_output_shapes
:’’’’’’’’’*
T0
£
/dense_3/kernel/Initializer/random_uniform/shapeConst*
valueB"      *!
_class
loc:@dense_3/kernel*
dtype0*
_output_shapes
:

-dense_3/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *óµ¾*!
_class
loc:@dense_3/kernel

-dense_3/kernel/Initializer/random_uniform/maxConst*
valueB
 *óµ>*!
_class
loc:@dense_3/kernel*
dtype0*
_output_shapes
: 
Ņ
7dense_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_3/kernel/Initializer/random_uniform/shape*
_output_shapes

:*
T0*!
_class
loc:@dense_3/kernel*
dtype0
Ö
-dense_3/kernel/Initializer/random_uniform/subSub-dense_3/kernel/Initializer/random_uniform/max-dense_3/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_3/kernel*
_output_shapes
: 
č
-dense_3/kernel/Initializer/random_uniform/mulMul7dense_3/kernel/Initializer/random_uniform/RandomUniform-dense_3/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_3/kernel*
_output_shapes

:*
T0
Ś
)dense_3/kernel/Initializer/random_uniformAdd-dense_3/kernel/Initializer/random_uniform/mul-dense_3/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_3/kernel*
_output_shapes

:

dense_3/kernel
VariableV2*!
_class
loc:@dense_3/kernel*
shape
:*
dtype0*
_output_shapes

:
¦
dense_3/kernel/AssignAssigndense_3/kernel)dense_3/kernel/Initializer/random_uniform*
T0*!
_class
loc:@dense_3/kernel*
_output_shapes

:
{
dense_3/kernel/readIdentitydense_3/kernel*
_output_shapes

:*
T0*!
_class
loc:@dense_3/kernel

dense_3/bias/Initializer/zerosConst*
_output_shapes
:*
valueB*    *
_class
loc:@dense_3/bias*
dtype0
u
dense_3/bias
VariableV2*
_class
loc:@dense_3/bias*
shape:*
dtype0*
_output_shapes
:

dense_3/bias/AssignAssigndense_3/biasdense_3/bias/Initializer/zeros*
T0*
_class
loc:@dense_3/bias*
_output_shapes
:
q
dense_3/bias/readIdentitydense_3/bias*
T0*
_class
loc:@dense_3/bias*
_output_shapes
:
s
dense_3/MatMulMatMuldropout_1/Identitydense_3/kernel/read*
T0*'
_output_shapes
:’’’’’’’’’
o
dense_3/BiasAddBiasAdddense_3/MatMuldense_3/bias/read*
T0*'
_output_shapes
:’’’’’’’’’
Y
dense_3/Relu6Relu6dense_3/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’
£
/dense_4/kernel/Initializer/random_uniform/shapeConst*
valueB"      *!
_class
loc:@dense_4/kernel*
dtype0*
_output_shapes
:

-dense_4/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *óµ¾*!
_class
loc:@dense_4/kernel

-dense_4/kernel/Initializer/random_uniform/maxConst*
valueB
 *óµ>*!
_class
loc:@dense_4/kernel*
dtype0*
_output_shapes
: 
Ņ
7dense_4/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_4/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:*
T0*!
_class
loc:@dense_4/kernel
Ö
-dense_4/kernel/Initializer/random_uniform/subSub-dense_4/kernel/Initializer/random_uniform/max-dense_4/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_4/kernel*
_output_shapes
: 
č
-dense_4/kernel/Initializer/random_uniform/mulMul7dense_4/kernel/Initializer/random_uniform/RandomUniform-dense_4/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_4/kernel*
_output_shapes

:*
T0
Ś
)dense_4/kernel/Initializer/random_uniformAdd-dense_4/kernel/Initializer/random_uniform/mul-dense_4/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_4/kernel*
_output_shapes

:

dense_4/kernel
VariableV2*
_output_shapes

:*!
_class
loc:@dense_4/kernel*
shape
:*
dtype0
¦
dense_4/kernel/AssignAssigndense_4/kernel)dense_4/kernel/Initializer/random_uniform*
T0*!
_class
loc:@dense_4/kernel*
_output_shapes

:
{
dense_4/kernel/readIdentitydense_4/kernel*
T0*!
_class
loc:@dense_4/kernel*
_output_shapes

:

dense_4/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@dense_4/bias*
dtype0*
_output_shapes
:
u
dense_4/bias
VariableV2*
dtype0*
_output_shapes
:*
_class
loc:@dense_4/bias*
shape:

dense_4/bias/AssignAssigndense_4/biasdense_4/bias/Initializer/zeros*
T0*
_class
loc:@dense_4/bias*
_output_shapes
:
q
dense_4/bias/readIdentitydense_4/bias*
_class
loc:@dense_4/bias*
_output_shapes
:*
T0
n
dense_4/MatMulMatMuldense_3/Relu6dense_4/kernel/read*'
_output_shapes
:’’’’’’’’’*
T0
o
dense_4/BiasAddBiasAdddense_4/MatMuldense_4/bias/read*'
_output_shapes
:’’’’’’’’’*
T0
W
dense_4/ReluReludense_4/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’
£
/dense_5/kernel/Initializer/random_uniform/shapeConst*
valueB"      *!
_class
loc:@dense_5/kernel*
dtype0*
_output_shapes
:

-dense_5/kernel/Initializer/random_uniform/minConst*
valueB
 *óµ¾*!
_class
loc:@dense_5/kernel*
dtype0*
_output_shapes
: 

-dense_5/kernel/Initializer/random_uniform/maxConst*
valueB
 *óµ>*!
_class
loc:@dense_5/kernel*
dtype0*
_output_shapes
: 
Ņ
7dense_5/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_5/kernel/Initializer/random_uniform/shape*
T0*!
_class
loc:@dense_5/kernel*
dtype0*
_output_shapes

:
Ö
-dense_5/kernel/Initializer/random_uniform/subSub-dense_5/kernel/Initializer/random_uniform/max-dense_5/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_5/kernel*
_output_shapes
: 
č
-dense_5/kernel/Initializer/random_uniform/mulMul7dense_5/kernel/Initializer/random_uniform/RandomUniform-dense_5/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_5/kernel*
_output_shapes

:
Ś
)dense_5/kernel/Initializer/random_uniformAdd-dense_5/kernel/Initializer/random_uniform/mul-dense_5/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_5/kernel*
_output_shapes

:*
T0

dense_5/kernel
VariableV2*
shape
:*
dtype0*
_output_shapes

:*!
_class
loc:@dense_5/kernel
¦
dense_5/kernel/AssignAssigndense_5/kernel)dense_5/kernel/Initializer/random_uniform*
_output_shapes

:*
T0*!
_class
loc:@dense_5/kernel
{
dense_5/kernel/readIdentitydense_5/kernel*
_output_shapes

:*
T0*!
_class
loc:@dense_5/kernel

dense_5/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@dense_5/bias*
dtype0*
_output_shapes
:
u
dense_5/bias
VariableV2*
_class
loc:@dense_5/bias*
shape:*
dtype0*
_output_shapes
:

dense_5/bias/AssignAssigndense_5/biasdense_5/bias/Initializer/zeros*
T0*
_class
loc:@dense_5/bias*
_output_shapes
:
q
dense_5/bias/readIdentitydense_5/bias*
_class
loc:@dense_5/bias*
_output_shapes
:*
T0
m
dense_5/MatMulMatMuldense_4/Reludense_5/kernel/read*
T0*'
_output_shapes
:’’’’’’’’’
o
dense_5/BiasAddBiasAdddense_5/MatMuldense_5/bias/read*'
_output_shapes
:’’’’’’’’’*
T0
Y
dense_5/Relu6Relu6dense_5/BiasAdd*'
_output_shapes
:’’’’’’’’’*
T0
£
/dense_6/kernel/Initializer/random_uniform/shapeConst*
valueB"      *!
_class
loc:@dense_6/kernel*
dtype0*
_output_shapes
:

-dense_6/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *óµ¾*!
_class
loc:@dense_6/kernel

-dense_6/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *óµ>*!
_class
loc:@dense_6/kernel*
dtype0
Ņ
7dense_6/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_6/kernel/Initializer/random_uniform/shape*
T0*!
_class
loc:@dense_6/kernel*
dtype0*
_output_shapes

:
Ö
-dense_6/kernel/Initializer/random_uniform/subSub-dense_6/kernel/Initializer/random_uniform/max-dense_6/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_6/kernel*
_output_shapes
: 
č
-dense_6/kernel/Initializer/random_uniform/mulMul7dense_6/kernel/Initializer/random_uniform/RandomUniform-dense_6/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_6/kernel*
_output_shapes

:
Ś
)dense_6/kernel/Initializer/random_uniformAdd-dense_6/kernel/Initializer/random_uniform/mul-dense_6/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_6/kernel*
_output_shapes

:*
T0

dense_6/kernel
VariableV2*!
_class
loc:@dense_6/kernel*
shape
:*
dtype0*
_output_shapes

:
¦
dense_6/kernel/AssignAssigndense_6/kernel)dense_6/kernel/Initializer/random_uniform*
T0*!
_class
loc:@dense_6/kernel*
_output_shapes

:
{
dense_6/kernel/readIdentitydense_6/kernel*!
_class
loc:@dense_6/kernel*
_output_shapes

:*
T0

dense_6/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@dense_6/bias*
dtype0*
_output_shapes
:
u
dense_6/bias
VariableV2*
_output_shapes
:*
_class
loc:@dense_6/bias*
shape:*
dtype0

dense_6/bias/AssignAssigndense_6/biasdense_6/bias/Initializer/zeros*
T0*
_class
loc:@dense_6/bias*
_output_shapes
:
q
dense_6/bias/readIdentitydense_6/bias*
T0*
_class
loc:@dense_6/bias*
_output_shapes
:
n
dense_6/MatMulMatMuldense_5/Relu6dense_6/kernel/read*'
_output_shapes
:’’’’’’’’’*
T0
o
dense_6/BiasAddBiasAdddense_6/MatMuldense_6/bias/read*
T0*'
_output_shapes
:’’’’’’’’’
W
dense_6/ReluReludense_6/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’
^
dropout_2/IdentityIdentitydense_6/Relu*'
_output_shapes
:’’’’’’’’’*
T0
£
/dense_7/kernel/Initializer/random_uniform/shapeConst*
valueB"      *!
_class
loc:@dense_7/kernel*
dtype0*
_output_shapes
:

-dense_7/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *óµ¾*!
_class
loc:@dense_7/kernel*
dtype0

-dense_7/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *óµ>*!
_class
loc:@dense_7/kernel
Ņ
7dense_7/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_7/kernel/Initializer/random_uniform/shape*
T0*!
_class
loc:@dense_7/kernel*
dtype0*
_output_shapes

:
Ö
-dense_7/kernel/Initializer/random_uniform/subSub-dense_7/kernel/Initializer/random_uniform/max-dense_7/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_7/kernel*
_output_shapes
: 
č
-dense_7/kernel/Initializer/random_uniform/mulMul7dense_7/kernel/Initializer/random_uniform/RandomUniform-dense_7/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_7/kernel*
_output_shapes

:
Ś
)dense_7/kernel/Initializer/random_uniformAdd-dense_7/kernel/Initializer/random_uniform/mul-dense_7/kernel/Initializer/random_uniform/min*
_output_shapes

:*
T0*!
_class
loc:@dense_7/kernel

dense_7/kernel
VariableV2*!
_class
loc:@dense_7/kernel*
shape
:*
dtype0*
_output_shapes

:
¦
dense_7/kernel/AssignAssigndense_7/kernel)dense_7/kernel/Initializer/random_uniform*
T0*!
_class
loc:@dense_7/kernel*
_output_shapes

:
{
dense_7/kernel/readIdentitydense_7/kernel*
_output_shapes

:*
T0*!
_class
loc:@dense_7/kernel

dense_7/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *
_class
loc:@dense_7/bias
u
dense_7/bias
VariableV2*
dtype0*
_output_shapes
:*
_class
loc:@dense_7/bias*
shape:

dense_7/bias/AssignAssigndense_7/biasdense_7/bias/Initializer/zeros*
T0*
_class
loc:@dense_7/bias*
_output_shapes
:
q
dense_7/bias/readIdentitydense_7/bias*
T0*
_class
loc:@dense_7/bias*
_output_shapes
:
s
dense_7/MatMulMatMuldropout_2/Identitydense_7/kernel/read*
T0*'
_output_shapes
:’’’’’’’’’
o
dense_7/BiasAddBiasAdddense_7/MatMuldense_7/bias/read*
T0*'
_output_shapes
:’’’’’’’’’
Y
dense_7/Relu6Relu6dense_7/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’
£
/dense_8/kernel/Initializer/random_uniform/shapeConst*
valueB"      *!
_class
loc:@dense_8/kernel*
dtype0*
_output_shapes
:

-dense_8/kernel/Initializer/random_uniform/minConst*
valueB
 *óµ¾*!
_class
loc:@dense_8/kernel*
dtype0*
_output_shapes
: 

-dense_8/kernel/Initializer/random_uniform/maxConst*
valueB
 *óµ>*!
_class
loc:@dense_8/kernel*
dtype0*
_output_shapes
: 
Ņ
7dense_8/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_8/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:*
T0*!
_class
loc:@dense_8/kernel
Ö
-dense_8/kernel/Initializer/random_uniform/subSub-dense_8/kernel/Initializer/random_uniform/max-dense_8/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_8/kernel*
_output_shapes
: 
č
-dense_8/kernel/Initializer/random_uniform/mulMul7dense_8/kernel/Initializer/random_uniform/RandomUniform-dense_8/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_8/kernel*
_output_shapes

:
Ś
)dense_8/kernel/Initializer/random_uniformAdd-dense_8/kernel/Initializer/random_uniform/mul-dense_8/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_8/kernel*
_output_shapes

:*
T0

dense_8/kernel
VariableV2*
shape
:*
dtype0*
_output_shapes

:*!
_class
loc:@dense_8/kernel
¦
dense_8/kernel/AssignAssigndense_8/kernel)dense_8/kernel/Initializer/random_uniform*
T0*!
_class
loc:@dense_8/kernel*
_output_shapes

:
{
dense_8/kernel/readIdentitydense_8/kernel*
T0*!
_class
loc:@dense_8/kernel*
_output_shapes

:

dense_8/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@dense_8/bias*
dtype0*
_output_shapes
:
u
dense_8/bias
VariableV2*
shape:*
dtype0*
_output_shapes
:*
_class
loc:@dense_8/bias

dense_8/bias/AssignAssigndense_8/biasdense_8/bias/Initializer/zeros*
_output_shapes
:*
T0*
_class
loc:@dense_8/bias
q
dense_8/bias/readIdentitydense_8/bias*
T0*
_class
loc:@dense_8/bias*
_output_shapes
:
n
dense_8/MatMulMatMuldense_7/Relu6dense_8/kernel/read*'
_output_shapes
:’’’’’’’’’*
T0
o
dense_8/BiasAddBiasAdddense_8/MatMuldense_8/bias/read*
T0*'
_output_shapes
:’’’’’’’’’
W
dense_8/ReluReludense_8/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’
^
dropout_3/IdentityIdentitydense_8/Relu*'
_output_shapes
:’’’’’’’’’*
T0
£
/dense_9/kernel/Initializer/random_uniform/shapeConst*
valueB"      *!
_class
loc:@dense_9/kernel*
dtype0*
_output_shapes
:

-dense_9/kernel/Initializer/random_uniform/minConst*
valueB
 *óµ¾*!
_class
loc:@dense_9/kernel*
dtype0*
_output_shapes
: 

-dense_9/kernel/Initializer/random_uniform/maxConst*
valueB
 *óµ>*!
_class
loc:@dense_9/kernel*
dtype0*
_output_shapes
: 
Ņ
7dense_9/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_9/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:*
T0*!
_class
loc:@dense_9/kernel
Ö
-dense_9/kernel/Initializer/random_uniform/subSub-dense_9/kernel/Initializer/random_uniform/max-dense_9/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_9/kernel*
_output_shapes
: 
č
-dense_9/kernel/Initializer/random_uniform/mulMul7dense_9/kernel/Initializer/random_uniform/RandomUniform-dense_9/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_9/kernel*
_output_shapes

:
Ś
)dense_9/kernel/Initializer/random_uniformAdd-dense_9/kernel/Initializer/random_uniform/mul-dense_9/kernel/Initializer/random_uniform/min*
_output_shapes

:*
T0*!
_class
loc:@dense_9/kernel

dense_9/kernel
VariableV2*
shape
:*
dtype0*
_output_shapes

:*!
_class
loc:@dense_9/kernel
¦
dense_9/kernel/AssignAssigndense_9/kernel)dense_9/kernel/Initializer/random_uniform*
_output_shapes

:*
T0*!
_class
loc:@dense_9/kernel
{
dense_9/kernel/readIdentitydense_9/kernel*
T0*!
_class
loc:@dense_9/kernel*
_output_shapes

:

dense_9/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@dense_9/bias*
dtype0*
_output_shapes
:
u
dense_9/bias
VariableV2*
dtype0*
_output_shapes
:*
_class
loc:@dense_9/bias*
shape:

dense_9/bias/AssignAssigndense_9/biasdense_9/bias/Initializer/zeros*
T0*
_class
loc:@dense_9/bias*
_output_shapes
:
q
dense_9/bias/readIdentitydense_9/bias*
T0*
_class
loc:@dense_9/bias*
_output_shapes
:
s
dense_9/MatMulMatMuldropout_3/Identitydense_9/kernel/read*
T0*'
_output_shapes
:’’’’’’’’’
o
dense_9/BiasAddBiasAdddense_9/MatMuldense_9/bias/read*
T0*'
_output_shapes
:’’’’’’’’’
Y
dense_9/Relu6Relu6dense_9/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’
„
0dense_10/kernel/Initializer/random_uniform/shapeConst*
valueB"      *"
_class
loc:@dense_10/kernel*
dtype0*
_output_shapes
:

.dense_10/kernel/Initializer/random_uniform/minConst*
valueB
 *óµ¾*"
_class
loc:@dense_10/kernel*
dtype0*
_output_shapes
: 

.dense_10/kernel/Initializer/random_uniform/maxConst*
valueB
 *óµ>*"
_class
loc:@dense_10/kernel*
dtype0*
_output_shapes
: 
Õ
8dense_10/kernel/Initializer/random_uniform/RandomUniformRandomUniform0dense_10/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@dense_10/kernel*
dtype0*
_output_shapes

:
Ś
.dense_10/kernel/Initializer/random_uniform/subSub.dense_10/kernel/Initializer/random_uniform/max.dense_10/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_10/kernel*
_output_shapes
: 
ģ
.dense_10/kernel/Initializer/random_uniform/mulMul8dense_10/kernel/Initializer/random_uniform/RandomUniform.dense_10/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@dense_10/kernel*
_output_shapes

:
Ž
*dense_10/kernel/Initializer/random_uniformAdd.dense_10/kernel/Initializer/random_uniform/mul.dense_10/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_10/kernel*
_output_shapes

:

dense_10/kernel
VariableV2*
shape
:*
dtype0*
_output_shapes

:*"
_class
loc:@dense_10/kernel
Ŗ
dense_10/kernel/AssignAssigndense_10/kernel*dense_10/kernel/Initializer/random_uniform*
T0*"
_class
loc:@dense_10/kernel*
_output_shapes

:
~
dense_10/kernel/readIdentitydense_10/kernel*"
_class
loc:@dense_10/kernel*
_output_shapes

:*
T0

dense_10/bias/Initializer/zerosConst*
valueB*    * 
_class
loc:@dense_10/bias*
dtype0*
_output_shapes
:
w
dense_10/bias
VariableV2*
dtype0*
_output_shapes
:* 
_class
loc:@dense_10/bias*
shape:

dense_10/bias/AssignAssigndense_10/biasdense_10/bias/Initializer/zeros*
T0* 
_class
loc:@dense_10/bias*
_output_shapes
:
t
dense_10/bias/readIdentitydense_10/bias*
_output_shapes
:*
T0* 
_class
loc:@dense_10/bias
p
dense_10/MatMulMatMuldense_9/Relu6dense_10/kernel/read*'
_output_shapes
:’’’’’’’’’*
T0
r
dense_10/BiasAddBiasAdddense_10/MatMuldense_10/bias/read*
T0*'
_output_shapes
:’’’’’’’’’
Y
dense_10/ReluReludense_10/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’
„
0dense_11/kernel/Initializer/random_uniform/shapeConst*
valueB"      *"
_class
loc:@dense_11/kernel*
dtype0*
_output_shapes
:

.dense_11/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *óµ¾*"
_class
loc:@dense_11/kernel

.dense_11/kernel/Initializer/random_uniform/maxConst*
valueB
 *óµ>*"
_class
loc:@dense_11/kernel*
dtype0*
_output_shapes
: 
Õ
8dense_11/kernel/Initializer/random_uniform/RandomUniformRandomUniform0dense_11/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@dense_11/kernel*
dtype0*
_output_shapes

:
Ś
.dense_11/kernel/Initializer/random_uniform/subSub.dense_11/kernel/Initializer/random_uniform/max.dense_11/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*"
_class
loc:@dense_11/kernel
ģ
.dense_11/kernel/Initializer/random_uniform/mulMul8dense_11/kernel/Initializer/random_uniform/RandomUniform.dense_11/kernel/Initializer/random_uniform/sub*"
_class
loc:@dense_11/kernel*
_output_shapes

:*
T0
Ž
*dense_11/kernel/Initializer/random_uniformAdd.dense_11/kernel/Initializer/random_uniform/mul.dense_11/kernel/Initializer/random_uniform/min*
_output_shapes

:*
T0*"
_class
loc:@dense_11/kernel

dense_11/kernel
VariableV2*
shape
:*
dtype0*
_output_shapes

:*"
_class
loc:@dense_11/kernel
Ŗ
dense_11/kernel/AssignAssigndense_11/kernel*dense_11/kernel/Initializer/random_uniform*
T0*"
_class
loc:@dense_11/kernel*
_output_shapes

:
~
dense_11/kernel/readIdentitydense_11/kernel*
_output_shapes

:*
T0*"
_class
loc:@dense_11/kernel

dense_11/bias/Initializer/zerosConst*
valueB*    * 
_class
loc:@dense_11/bias*
dtype0*
_output_shapes
:
w
dense_11/bias
VariableV2* 
_class
loc:@dense_11/bias*
shape:*
dtype0*
_output_shapes
:

dense_11/bias/AssignAssigndense_11/biasdense_11/bias/Initializer/zeros*
_output_shapes
:*
T0* 
_class
loc:@dense_11/bias
t
dense_11/bias/readIdentitydense_11/bias*
T0* 
_class
loc:@dense_11/bias*
_output_shapes
:
p
dense_11/MatMulMatMuldense_10/Reludense_11/kernel/read*
T0*'
_output_shapes
:’’’’’’’’’
r
dense_11/BiasAddBiasAdddense_11/MatMuldense_11/bias/read*
T0*'
_output_shapes
:’’’’’’’’’
[
dense_11/Relu6Relu6dense_11/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’
„
0dense_12/kernel/Initializer/random_uniform/shapeConst*
valueB"      *"
_class
loc:@dense_12/kernel*
dtype0*
_output_shapes
:

.dense_12/kernel/Initializer/random_uniform/minConst*
valueB
 *ēÓś¾*"
_class
loc:@dense_12/kernel*
dtype0*
_output_shapes
: 

.dense_12/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *ēÓś>*"
_class
loc:@dense_12/kernel
Õ
8dense_12/kernel/Initializer/random_uniform/RandomUniformRandomUniform0dense_12/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:*
T0*"
_class
loc:@dense_12/kernel
Ś
.dense_12/kernel/Initializer/random_uniform/subSub.dense_12/kernel/Initializer/random_uniform/max.dense_12/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_12/kernel*
_output_shapes
: 
ģ
.dense_12/kernel/Initializer/random_uniform/mulMul8dense_12/kernel/Initializer/random_uniform/RandomUniform.dense_12/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@dense_12/kernel*
_output_shapes

:
Ž
*dense_12/kernel/Initializer/random_uniformAdd.dense_12/kernel/Initializer/random_uniform/mul.dense_12/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_12/kernel*
_output_shapes

:

dense_12/kernel
VariableV2*"
_class
loc:@dense_12/kernel*
shape
:*
dtype0*
_output_shapes

:
Ŗ
dense_12/kernel/AssignAssigndense_12/kernel*dense_12/kernel/Initializer/random_uniform*
T0*"
_class
loc:@dense_12/kernel*
_output_shapes

:
~
dense_12/kernel/readIdentitydense_12/kernel*
_output_shapes

:*
T0*"
_class
loc:@dense_12/kernel

dense_12/bias/Initializer/zerosConst*
valueB*    * 
_class
loc:@dense_12/bias*
dtype0*
_output_shapes
:
w
dense_12/bias
VariableV2*
shape:*
dtype0*
_output_shapes
:* 
_class
loc:@dense_12/bias

dense_12/bias/AssignAssigndense_12/biasdense_12/bias/Initializer/zeros*
T0* 
_class
loc:@dense_12/bias*
_output_shapes
:
t
dense_12/bias/readIdentitydense_12/bias*
T0* 
_class
loc:@dense_12/bias*
_output_shapes
:
q
dense_12/MatMulMatMuldense_11/Relu6dense_12/kernel/read*'
_output_shapes
:’’’’’’’’’*
T0
r
dense_12/BiasAddBiasAdddense_12/MatMuldense_12/bias/read*
T0*'
_output_shapes
:’’’’’’’’’
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_74c52acf522a43a883d9c20ea43fbc72/part*
dtype0*
_output_shapes
: 
d
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
_output_shapes
: *
N
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
ö
save/SaveV2/tensor_namesConst"/device:CPU:0*
valueBB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_10/biasBdense_10/kernelBdense_11/biasBdense_11/kernelBdense_12/biasBdense_12/kernelBdense_2/biasBdense_2/kernelBdense_3/biasBdense_3/kernelBdense_4/biasBdense_4/kernelBdense_5/biasBdense_5/kernelBdense_6/biasBdense_6/kernelBdense_7/biasBdense_7/kernelBdense_8/biasBdense_8/kernelBdense_9/biasBdense_9/kernelBglobal_stepBrnn/gru_cell/candidate/biasBrnn/gru_cell/candidate/kernelBrnn/gru_cell/gates/biasBrnn/gru_cell/gates/kernel*
dtype0*
_output_shapes
:
°
save/SaveV2/shape_and_slicesConst"/device:CPU:0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
¦
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices
dense/biasdense/kerneldense_1/biasdense_1/kerneldense_10/biasdense_10/kerneldense_11/biasdense_11/kerneldense_12/biasdense_12/kerneldense_2/biasdense_2/kerneldense_3/biasdense_3/kerneldense_4/biasdense_4/kerneldense_5/biasdense_5/kerneldense_6/biasdense_6/kerneldense_7/biasdense_7/kerneldense_8/biasdense_8/kerneldense_9/biasdense_9/kernelglobal_steprnn/gru_cell/candidate/biasrnn/gru_cell/candidate/kernelrnn/gru_cell/gates/biasrnn/gru_cell/gates/kernel"/device:CPU:0*-
dtypes#
!2	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
 
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*
N*
_output_shapes
:
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
ł
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
valueBB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_10/biasBdense_10/kernelBdense_11/biasBdense_11/kernelBdense_12/biasBdense_12/kernelBdense_2/biasBdense_2/kernelBdense_3/biasBdense_3/kernelBdense_4/biasBdense_4/kernelBdense_5/biasBdense_5/kernelBdense_6/biasBdense_6/kernelBdense_7/biasBdense_7/kernelBdense_8/biasBdense_8/kernelBdense_9/biasBdense_9/kernelBglobal_stepBrnn/gru_cell/candidate/biasBrnn/gru_cell/candidate/kernelBrnn/gru_cell/gates/biasBrnn/gru_cell/gates/kernel*
dtype0
³
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
¶
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes~
|:::::::::::::::::::::::::::::::*-
dtypes#
!2	
u
save/AssignAssign
dense/biassave/RestoreV2*
T0*
_class
loc:@dense/bias*
_output_shapes
:

save/Assign_1Assigndense/kernelsave/RestoreV2:1*
_class
loc:@dense/kernel*
_output_shapes

:*
T0
}
save/Assign_2Assigndense_1/biassave/RestoreV2:2*
T0*
_class
loc:@dense_1/bias*
_output_shapes
:

save/Assign_3Assigndense_1/kernelsave/RestoreV2:3*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes

:

save/Assign_4Assigndense_10/biassave/RestoreV2:4*
T0* 
_class
loc:@dense_10/bias*
_output_shapes
:

save/Assign_5Assigndense_10/kernelsave/RestoreV2:5*
T0*"
_class
loc:@dense_10/kernel*
_output_shapes

:

save/Assign_6Assigndense_11/biassave/RestoreV2:6*
T0* 
_class
loc:@dense_11/bias*
_output_shapes
:

save/Assign_7Assigndense_11/kernelsave/RestoreV2:7*
_output_shapes

:*
T0*"
_class
loc:@dense_11/kernel

save/Assign_8Assigndense_12/biassave/RestoreV2:8*
_output_shapes
:*
T0* 
_class
loc:@dense_12/bias

save/Assign_9Assigndense_12/kernelsave/RestoreV2:9*
T0*"
_class
loc:@dense_12/kernel*
_output_shapes

:

save/Assign_10Assigndense_2/biassave/RestoreV2:10*
_class
loc:@dense_2/bias*
_output_shapes
:*
T0

save/Assign_11Assigndense_2/kernelsave/RestoreV2:11*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes

:

save/Assign_12Assigndense_3/biassave/RestoreV2:12*
T0*
_class
loc:@dense_3/bias*
_output_shapes
:

save/Assign_13Assigndense_3/kernelsave/RestoreV2:13*
T0*!
_class
loc:@dense_3/kernel*
_output_shapes

:

save/Assign_14Assigndense_4/biassave/RestoreV2:14*
T0*
_class
loc:@dense_4/bias*
_output_shapes
:

save/Assign_15Assigndense_4/kernelsave/RestoreV2:15*
T0*!
_class
loc:@dense_4/kernel*
_output_shapes

:

save/Assign_16Assigndense_5/biassave/RestoreV2:16*
_output_shapes
:*
T0*
_class
loc:@dense_5/bias

save/Assign_17Assigndense_5/kernelsave/RestoreV2:17*
_output_shapes

:*
T0*!
_class
loc:@dense_5/kernel

save/Assign_18Assigndense_6/biassave/RestoreV2:18*
_class
loc:@dense_6/bias*
_output_shapes
:*
T0

save/Assign_19Assigndense_6/kernelsave/RestoreV2:19*
T0*!
_class
loc:@dense_6/kernel*
_output_shapes

:

save/Assign_20Assigndense_7/biassave/RestoreV2:20*
T0*
_class
loc:@dense_7/bias*
_output_shapes
:

save/Assign_21Assigndense_7/kernelsave/RestoreV2:21*!
_class
loc:@dense_7/kernel*
_output_shapes

:*
T0

save/Assign_22Assigndense_8/biassave/RestoreV2:22*
T0*
_class
loc:@dense_8/bias*
_output_shapes
:

save/Assign_23Assigndense_8/kernelsave/RestoreV2:23*
T0*!
_class
loc:@dense_8/kernel*
_output_shapes

:

save/Assign_24Assigndense_9/biassave/RestoreV2:24*
T0*
_class
loc:@dense_9/bias*
_output_shapes
:

save/Assign_25Assigndense_9/kernelsave/RestoreV2:25*
_output_shapes

:*
T0*!
_class
loc:@dense_9/kernel
y
save/Assign_26Assignglobal_stepsave/RestoreV2:26*
T0	*
_class
loc:@global_step*
_output_shapes
: 

save/Assign_27Assignrnn/gru_cell/candidate/biassave/RestoreV2:27*
_output_shapes
:*
T0*.
_class$
" loc:@rnn/gru_cell/candidate/bias
„
save/Assign_28Assignrnn/gru_cell/candidate/kernelsave/RestoreV2:28*
T0*0
_class&
$"loc:@rnn/gru_cell/candidate/kernel*
_output_shapes

:

save/Assign_29Assignrnn/gru_cell/gates/biassave/RestoreV2:29*
T0**
_class 
loc:@rnn/gru_cell/gates/bias*
_output_shapes
: 

save/Assign_30Assignrnn/gru_cell/gates/kernelsave/RestoreV2:30*
T0*,
_class"
 loc:@rnn/gru_cell/gates/kernel*
_output_shapes

: 

save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard

initNoOp

init_all_tablesNoOp

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_d72be7e7c149496e829b5811336e8101/part*
dtype0*
_output_shapes
: 
j
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
_output_shapes
: 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
m
save_1/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards"/device:CPU:0*
_output_shapes
: 
ų
save_1/SaveV2/tensor_namesConst"/device:CPU:0*
valueBB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_10/biasBdense_10/kernelBdense_11/biasBdense_11/kernelBdense_12/biasBdense_12/kernelBdense_2/biasBdense_2/kernelBdense_3/biasBdense_3/kernelBdense_4/biasBdense_4/kernelBdense_5/biasBdense_5/kernelBdense_6/biasBdense_6/kernelBdense_7/biasBdense_7/kernelBdense_8/biasBdense_8/kernelBdense_9/biasBdense_9/kernelBglobal_stepBrnn/gru_cell/candidate/biasBrnn/gru_cell/candidate/kernelBrnn/gru_cell/gates/biasBrnn/gru_cell/gates/kernel*
dtype0*
_output_shapes
:
²
save_1/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
®
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slices
dense/biasdense/kerneldense_1/biasdense_1/kerneldense_10/biasdense_10/kerneldense_11/biasdense_11/kerneldense_12/biasdense_12/kerneldense_2/biasdense_2/kerneldense_3/biasdense_3/kerneldense_4/biasdense_4/kerneldense_5/biasdense_5/kerneldense_6/biasdense_6/kerneldense_7/biasdense_7/kerneldense_8/biasdense_8/kerneldense_9/biasdense_9/kernelglobal_steprnn/gru_cell/candidate/biasrnn/gru_cell/candidate/kernelrnn/gru_cell/gates/biasrnn/gru_cell/gates/kernel"/device:CPU:0*-
dtypes#
!2	
Ø
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
¦
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency"/device:CPU:0*
_output_shapes
:*
T0*
N
{
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const"/device:CPU:0

save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
ū
save_1/RestoreV2/tensor_namesConst"/device:CPU:0*
valueBB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_10/biasBdense_10/kernelBdense_11/biasBdense_11/kernelBdense_12/biasBdense_12/kernelBdense_2/biasBdense_2/kernelBdense_3/biasBdense_3/kernelBdense_4/biasBdense_4/kernelBdense_5/biasBdense_5/kernelBdense_6/biasBdense_6/kernelBdense_7/biasBdense_7/kernelBdense_8/biasBdense_8/kernelBdense_9/biasBdense_9/kernelBglobal_stepBrnn/gru_cell/candidate/biasBrnn/gru_cell/candidate/kernelBrnn/gru_cell/gates/biasBrnn/gru_cell/gates/kernel*
dtype0*
_output_shapes
:
µ
!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
¾
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes~
|:::::::::::::::::::::::::::::::*-
dtypes#
!2	
y
save_1/AssignAssign
dense/biassave_1/RestoreV2*
T0*
_class
loc:@dense/bias*
_output_shapes
:

save_1/Assign_1Assigndense/kernelsave_1/RestoreV2:1*
T0*
_class
loc:@dense/kernel*
_output_shapes

:

save_1/Assign_2Assigndense_1/biassave_1/RestoreV2:2*
T0*
_class
loc:@dense_1/bias*
_output_shapes
:

save_1/Assign_3Assigndense_1/kernelsave_1/RestoreV2:3*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes

:

save_1/Assign_4Assigndense_10/biassave_1/RestoreV2:4*
T0* 
_class
loc:@dense_10/bias*
_output_shapes
:

save_1/Assign_5Assigndense_10/kernelsave_1/RestoreV2:5*
T0*"
_class
loc:@dense_10/kernel*
_output_shapes

:

save_1/Assign_6Assigndense_11/biassave_1/RestoreV2:6*
T0* 
_class
loc:@dense_11/bias*
_output_shapes
:

save_1/Assign_7Assigndense_11/kernelsave_1/RestoreV2:7*
T0*"
_class
loc:@dense_11/kernel*
_output_shapes

:

save_1/Assign_8Assigndense_12/biassave_1/RestoreV2:8*
_output_shapes
:*
T0* 
_class
loc:@dense_12/bias

save_1/Assign_9Assigndense_12/kernelsave_1/RestoreV2:9*
T0*"
_class
loc:@dense_12/kernel*
_output_shapes

:

save_1/Assign_10Assigndense_2/biassave_1/RestoreV2:10*
T0*
_class
loc:@dense_2/bias*
_output_shapes
:

save_1/Assign_11Assigndense_2/kernelsave_1/RestoreV2:11*
_output_shapes

:*
T0*!
_class
loc:@dense_2/kernel

save_1/Assign_12Assigndense_3/biassave_1/RestoreV2:12*
_class
loc:@dense_3/bias*
_output_shapes
:*
T0

save_1/Assign_13Assigndense_3/kernelsave_1/RestoreV2:13*!
_class
loc:@dense_3/kernel*
_output_shapes

:*
T0

save_1/Assign_14Assigndense_4/biassave_1/RestoreV2:14*
T0*
_class
loc:@dense_4/bias*
_output_shapes
:

save_1/Assign_15Assigndense_4/kernelsave_1/RestoreV2:15*
T0*!
_class
loc:@dense_4/kernel*
_output_shapes

:

save_1/Assign_16Assigndense_5/biassave_1/RestoreV2:16*
T0*
_class
loc:@dense_5/bias*
_output_shapes
:

save_1/Assign_17Assigndense_5/kernelsave_1/RestoreV2:17*
T0*!
_class
loc:@dense_5/kernel*
_output_shapes

:

save_1/Assign_18Assigndense_6/biassave_1/RestoreV2:18*
T0*
_class
loc:@dense_6/bias*
_output_shapes
:

save_1/Assign_19Assigndense_6/kernelsave_1/RestoreV2:19*
_output_shapes

:*
T0*!
_class
loc:@dense_6/kernel

save_1/Assign_20Assigndense_7/biassave_1/RestoreV2:20*
_class
loc:@dense_7/bias*
_output_shapes
:*
T0

save_1/Assign_21Assigndense_7/kernelsave_1/RestoreV2:21*
T0*!
_class
loc:@dense_7/kernel*
_output_shapes

:

save_1/Assign_22Assigndense_8/biassave_1/RestoreV2:22*
T0*
_class
loc:@dense_8/bias*
_output_shapes
:

save_1/Assign_23Assigndense_8/kernelsave_1/RestoreV2:23*
T0*!
_class
loc:@dense_8/kernel*
_output_shapes

:

save_1/Assign_24Assigndense_9/biassave_1/RestoreV2:24*
T0*
_class
loc:@dense_9/bias*
_output_shapes
:

save_1/Assign_25Assigndense_9/kernelsave_1/RestoreV2:25*
T0*!
_class
loc:@dense_9/kernel*
_output_shapes

:
}
save_1/Assign_26Assignglobal_stepsave_1/RestoreV2:26*
_output_shapes
: *
T0	*
_class
loc:@global_step
”
save_1/Assign_27Assignrnn/gru_cell/candidate/biassave_1/RestoreV2:27*
T0*.
_class$
" loc:@rnn/gru_cell/candidate/bias*
_output_shapes
:
©
save_1/Assign_28Assignrnn/gru_cell/candidate/kernelsave_1/RestoreV2:28*
T0*0
_class&
$"loc:@rnn/gru_cell/candidate/kernel*
_output_shapes

:

save_1/Assign_29Assignrnn/gru_cell/gates/biassave_1/RestoreV2:29*
T0**
_class 
loc:@rnn/gru_cell/gates/bias*
_output_shapes
: 
”
save_1/Assign_30Assignrnn/gru_cell/gates/kernelsave_1/RestoreV2:30*
T0*,
_class"
 loc:@rnn/gru_cell/gates/kernel*
_output_shapes

: 
Ż
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_2^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_3^save_1/Assign_30^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"
while_contextõņ
ļ
rnn/while/while_context *rnn/while/LoopCond:02rnn/while/Merge:0:rnn/while/Identity:0Brnn/while/Exit:0Brnn/while/Exit_1:0Brnn/while/Exit_2:0Brnn/while/Exit_3:0JŁ
rnn/Minimum:0
rnn/TensorArray:0
@rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
rnn/TensorArray_1:0
"rnn/gru_cell/candidate/bias/read:0
$rnn/gru_cell/candidate/kernel/read:0
rnn/gru_cell/gates/bias/read:0
 rnn/gru_cell/gates/kernel/read:0
rnn/strided_slice_1:0
rnn/while/Enter:0
rnn/while/Enter_1:0
rnn/while/Enter_2:0
rnn/while/Enter_3:0
rnn/while/Exit:0
rnn/while/Exit_1:0
rnn/while/Exit_2:0
rnn/while/Exit_3:0
rnn/while/Identity:0
rnn/while/Identity_1:0
rnn/while/Identity_2:0
rnn/while/Identity_3:0
rnn/while/Less/Enter:0
rnn/while/Less:0
rnn/while/Less_1/Enter:0
rnn/while/Less_1:0
rnn/while/LogicalAnd:0
rnn/while/LoopCond:0
rnn/while/Merge:0
rnn/while/Merge:1
rnn/while/Merge_1:0
rnn/while/Merge_1:1
rnn/while/Merge_2:0
rnn/while/Merge_2:1
rnn/while/Merge_3:0
rnn/while/Merge_3:1
rnn/while/NextIteration:0
rnn/while/NextIteration_1:0
rnn/while/NextIteration_2:0
rnn/while/NextIteration_3:0
rnn/while/Switch:0
rnn/while/Switch:1
rnn/while/Switch_1:0
rnn/while/Switch_1:1
rnn/while/Switch_2:0
rnn/while/Switch_2:1
rnn/while/Switch_3:0
rnn/while/Switch_3:1
#rnn/while/TensorArrayReadV3/Enter:0
%rnn/while/TensorArrayReadV3/Enter_1:0
rnn/while/TensorArrayReadV3:0
5rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
/rnn/while/TensorArrayWrite/TensorArrayWriteV3:0
rnn/while/add/y:0
rnn/while/add:0
rnn/while/add_1/y:0
rnn/while/add_1:0
"rnn/while/gru_cell/BiasAdd/Enter:0
rnn/while/gru_cell/BiasAdd:0
$rnn/while/gru_cell/BiasAdd_1/Enter:0
rnn/while/gru_cell/BiasAdd_1:0
rnn/while/gru_cell/Const:0
!rnn/while/gru_cell/MatMul/Enter:0
rnn/while/gru_cell/MatMul:0
#rnn/while/gru_cell/MatMul_1/Enter:0
rnn/while/gru_cell/MatMul_1:0
rnn/while/gru_cell/Sigmoid:0
rnn/while/gru_cell/Tanh:0
rnn/while/gru_cell/add:0
 rnn/while/gru_cell/concat/axis:0
rnn/while/gru_cell/concat:0
"rnn/while/gru_cell/concat_1/axis:0
rnn/while/gru_cell/concat_1:0
rnn/while/gru_cell/mul:0
rnn/while/gru_cell/mul_1:0
rnn/while/gru_cell/mul_2:0
$rnn/while/gru_cell/split/split_dim:0
rnn/while/gru_cell/split:0
rnn/while/gru_cell/split:1
rnn/while/gru_cell/sub/x:0
rnn/while/gru_cell/sub:0D
rnn/gru_cell/gates/bias/read:0"rnn/while/gru_cell/BiasAdd/Enter:0J
rnn/TensorArray:05rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0K
$rnn/gru_cell/candidate/kernel/read:0#rnn/while/gru_cell/MatMul_1/Enter:0)
rnn/Minimum:0rnn/while/Less_1/Enter:0:
rnn/TensorArray_1:0#rnn/while/TensorArrayReadV3/Enter:0J
"rnn/gru_cell/candidate/bias/read:0$rnn/while/gru_cell/BiasAdd_1/Enter:0/
rnn/strided_slice_1:0rnn/while/Less/Enter:0i
@rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0%rnn/while/TensorArrayReadV3/Enter_1:0E
 rnn/gru_cell/gates/kernel/read:0!rnn/while/gru_cell/MatMul/Enter:0Rrnn/while/Enter:0Rrnn/while/Enter_1:0Rrnn/while/Enter_2:0Rrnn/while/Enter_3:0Zrnn/strided_slice_1:0"Ź
	variables¼¹
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0

rnn/gru_cell/gates/kernel:0 rnn/gru_cell/gates/kernel/Assign rnn/gru_cell/gates/kernel/read:026rnn/gru_cell/gates/kernel/Initializer/random_uniform:0

rnn/gru_cell/gates/bias:0rnn/gru_cell/gates/bias/Assignrnn/gru_cell/gates/bias/read:02+rnn/gru_cell/gates/bias/Initializer/Const:0
©
rnn/gru_cell/candidate/kernel:0$rnn/gru_cell/candidate/kernel/Assign$rnn/gru_cell/candidate/kernel/read:02:rnn/gru_cell/candidate/kernel/Initializer/random_uniform:0

rnn/gru_cell/candidate/bias:0"rnn/gru_cell/candidate/bias/Assign"rnn/gru_cell/candidate/bias/read:02/rnn/gru_cell/candidate/bias/Initializer/zeros:0
e
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:0
T
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:0
m
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02+dense_1/kernel/Initializer/random_uniform:0
\
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02 dense_1/bias/Initializer/zeros:0
m
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02+dense_2/kernel/Initializer/random_uniform:0
\
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02 dense_2/bias/Initializer/zeros:0
m
dense_3/kernel:0dense_3/kernel/Assigndense_3/kernel/read:02+dense_3/kernel/Initializer/random_uniform:0
\
dense_3/bias:0dense_3/bias/Assigndense_3/bias/read:02 dense_3/bias/Initializer/zeros:0
m
dense_4/kernel:0dense_4/kernel/Assigndense_4/kernel/read:02+dense_4/kernel/Initializer/random_uniform:0
\
dense_4/bias:0dense_4/bias/Assigndense_4/bias/read:02 dense_4/bias/Initializer/zeros:0
m
dense_5/kernel:0dense_5/kernel/Assigndense_5/kernel/read:02+dense_5/kernel/Initializer/random_uniform:0
\
dense_5/bias:0dense_5/bias/Assigndense_5/bias/read:02 dense_5/bias/Initializer/zeros:0
m
dense_6/kernel:0dense_6/kernel/Assigndense_6/kernel/read:02+dense_6/kernel/Initializer/random_uniform:0
\
dense_6/bias:0dense_6/bias/Assigndense_6/bias/read:02 dense_6/bias/Initializer/zeros:0
m
dense_7/kernel:0dense_7/kernel/Assigndense_7/kernel/read:02+dense_7/kernel/Initializer/random_uniform:0
\
dense_7/bias:0dense_7/bias/Assigndense_7/bias/read:02 dense_7/bias/Initializer/zeros:0
m
dense_8/kernel:0dense_8/kernel/Assigndense_8/kernel/read:02+dense_8/kernel/Initializer/random_uniform:0
\
dense_8/bias:0dense_8/bias/Assigndense_8/bias/read:02 dense_8/bias/Initializer/zeros:0
m
dense_9/kernel:0dense_9/kernel/Assigndense_9/kernel/read:02+dense_9/kernel/Initializer/random_uniform:0
\
dense_9/bias:0dense_9/bias/Assigndense_9/bias/read:02 dense_9/bias/Initializer/zeros:0
q
dense_10/kernel:0dense_10/kernel/Assigndense_10/kernel/read:02,dense_10/kernel/Initializer/random_uniform:0
`
dense_10/bias:0dense_10/bias/Assigndense_10/bias/read:02!dense_10/bias/Initializer/zeros:0
q
dense_11/kernel:0dense_11/kernel/Assigndense_11/kernel/read:02,dense_11/kernel/Initializer/random_uniform:0
`
dense_11/bias:0dense_11/bias/Assigndense_11/bias/read:02!dense_11/bias/Initializer/zeros:0
q
dense_12/kernel:0dense_12/kernel/Assigndense_12/kernel/read:02,dense_12/kernel/Initializer/random_uniform:0
`
dense_12/bias:0dense_12/bias/Assigndense_12/bias/read:02!dense_12/bias/Initializer/zeros:0" 
legacy_init_op


group_deps"ś
trainable_variablesāß

rnn/gru_cell/gates/kernel:0 rnn/gru_cell/gates/kernel/Assign rnn/gru_cell/gates/kernel/read:026rnn/gru_cell/gates/kernel/Initializer/random_uniform:0

rnn/gru_cell/gates/bias:0rnn/gru_cell/gates/bias/Assignrnn/gru_cell/gates/bias/read:02+rnn/gru_cell/gates/bias/Initializer/Const:0
©
rnn/gru_cell/candidate/kernel:0$rnn/gru_cell/candidate/kernel/Assign$rnn/gru_cell/candidate/kernel/read:02:rnn/gru_cell/candidate/kernel/Initializer/random_uniform:0

rnn/gru_cell/candidate/bias:0"rnn/gru_cell/candidate/bias/Assign"rnn/gru_cell/candidate/bias/read:02/rnn/gru_cell/candidate/bias/Initializer/zeros:0
e
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:0
T
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:0
m
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02+dense_1/kernel/Initializer/random_uniform:0
\
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02 dense_1/bias/Initializer/zeros:0
m
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02+dense_2/kernel/Initializer/random_uniform:0
\
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02 dense_2/bias/Initializer/zeros:0
m
dense_3/kernel:0dense_3/kernel/Assigndense_3/kernel/read:02+dense_3/kernel/Initializer/random_uniform:0
\
dense_3/bias:0dense_3/bias/Assigndense_3/bias/read:02 dense_3/bias/Initializer/zeros:0
m
dense_4/kernel:0dense_4/kernel/Assigndense_4/kernel/read:02+dense_4/kernel/Initializer/random_uniform:0
\
dense_4/bias:0dense_4/bias/Assigndense_4/bias/read:02 dense_4/bias/Initializer/zeros:0
m
dense_5/kernel:0dense_5/kernel/Assigndense_5/kernel/read:02+dense_5/kernel/Initializer/random_uniform:0
\
dense_5/bias:0dense_5/bias/Assigndense_5/bias/read:02 dense_5/bias/Initializer/zeros:0
m
dense_6/kernel:0dense_6/kernel/Assigndense_6/kernel/read:02+dense_6/kernel/Initializer/random_uniform:0
\
dense_6/bias:0dense_6/bias/Assigndense_6/bias/read:02 dense_6/bias/Initializer/zeros:0
m
dense_7/kernel:0dense_7/kernel/Assigndense_7/kernel/read:02+dense_7/kernel/Initializer/random_uniform:0
\
dense_7/bias:0dense_7/bias/Assigndense_7/bias/read:02 dense_7/bias/Initializer/zeros:0
m
dense_8/kernel:0dense_8/kernel/Assigndense_8/kernel/read:02+dense_8/kernel/Initializer/random_uniform:0
\
dense_8/bias:0dense_8/bias/Assigndense_8/bias/read:02 dense_8/bias/Initializer/zeros:0
m
dense_9/kernel:0dense_9/kernel/Assigndense_9/kernel/read:02+dense_9/kernel/Initializer/random_uniform:0
\
dense_9/bias:0dense_9/bias/Assigndense_9/bias/read:02 dense_9/bias/Initializer/zeros:0
q
dense_10/kernel:0dense_10/kernel/Assigndense_10/kernel/read:02,dense_10/kernel/Initializer/random_uniform:0
`
dense_10/bias:0dense_10/bias/Assigndense_10/bias/read:02!dense_10/bias/Initializer/zeros:0
q
dense_11/kernel:0dense_11/kernel/Assigndense_11/kernel/read:02,dense_11/kernel/Initializer/random_uniform:0
`
dense_11/bias:0dense_11/bias/Assigndense_11/bias/read:02!dense_11/bias/Initializer/zeros:0
q
dense_12/kernel:0dense_12/kernel/Assigndense_12/kernel/read:02,dense_12/kernel/Initializer/random_uniform:0
`
dense_12/bias:0dense_12/bias/Assigndense_12/bias/read:02!dense_12/bias/Initializer/zeros:0"k
global_step\Z
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0*
serving_default
-
price$
Placeholder:0’’’’’’’’’16
	predicted)
dense_12/BiasAdd:0’’’’’’’’’tensorflow/serving/predict*
predictions
-
price$
Placeholder:0’’’’’’’’’16
	predicted)
dense_12/BiasAdd:0’’’’’’’’’tensorflow/serving/predict