ы
л
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
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
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
q
GatherNd
params"Tparams
indices"Tindices
output"Tparams"
Tparamstype"
Tindicestype:
2	
Ё
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype
.
Identity

input"T
output"T"	
Ttype
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 

NoOp
U
NotEqual
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(

OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisintџџџџџџџџџ"	
Ttype"
TItype0	:
2	
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
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
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
?
Select
	condition

t"T
e"T
output"T"	
Ttype
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
М
SparseToDense
sparse_indices"Tindices
output_shape"Tindices
sparse_values"T
default_value"T

dense"T"
validate_indicesbool("	
Ttype"
Tindicestype:
2	
С
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring Ј
@
StaticRegexFullMatch	
input

output
"
patternstring
ї
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 
E
Where

input"T	
index	"%
Ttype0
:
2	
"serve*2.11.02v2.11.0-rc2-15-g6290819256d8

e
ConstConst*
_output_shapes
:*
dtype0*,
value#B!BKucingBAnjingBLainnya
h
Const_1Const*
_output_shapes
:*
dtype0	*-
value$B"	"                      
R
Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 R
џџџџџџџџџ
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
o

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name	3954668*
value_dtype0	

Adam/v/sequential/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:д*/
shared_name Adam/v/sequential/dense_3/bias

2Adam/v/sequential/dense_3/bias/Read/ReadVariableOpReadVariableOpAdam/v/sequential/dense_3/bias*
_output_shapes	
:д*
dtype0

Adam/m/sequential/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:д*/
shared_name Adam/m/sequential/dense_3/bias

2Adam/m/sequential/dense_3/bias/Read/ReadVariableOpReadVariableOpAdam/m/sequential/dense_3/bias*
_output_shapes	
:д*
dtype0

 Adam/v/sequential/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
д*1
shared_name" Adam/v/sequential/dense_3/kernel

4Adam/v/sequential/dense_3/kernel/Read/ReadVariableOpReadVariableOp Adam/v/sequential/dense_3/kernel* 
_output_shapes
:
д*
dtype0

 Adam/m/sequential/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
д*1
shared_name" Adam/m/sequential/dense_3/kernel

4Adam/m/sequential/dense_3/kernel/Read/ReadVariableOpReadVariableOp Adam/m/sequential/dense_3/kernel* 
_output_shapes
:
д*
dtype0

Adam/v/sequential/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/v/sequential/dense_2/bias

2Adam/v/sequential/dense_2/bias/Read/ReadVariableOpReadVariableOpAdam/v/sequential/dense_2/bias*
_output_shapes	
:*
dtype0

Adam/m/sequential/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/m/sequential/dense_2/bias

2Adam/m/sequential/dense_2/bias/Read/ReadVariableOpReadVariableOpAdam/m/sequential/dense_2/bias*
_output_shapes	
:*
dtype0

 Adam/v/sequential/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*1
shared_name" Adam/v/sequential/dense_2/kernel

4Adam/v/sequential/dense_2/kernel/Read/ReadVariableOpReadVariableOp Adam/v/sequential/dense_2/kernel* 
_output_shapes
:
*
dtype0

 Adam/m/sequential/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*1
shared_name" Adam/m/sequential/dense_2/kernel

4Adam/m/sequential/dense_2/kernel/Read/ReadVariableOpReadVariableOp Adam/m/sequential/dense_2/kernel* 
_output_shapes
:
*
dtype0

Adam/v/sequential/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/v/sequential/dense_1/bias

2Adam/v/sequential/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/v/sequential/dense_1/bias*
_output_shapes	
:*
dtype0

Adam/m/sequential/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/m/sequential/dense_1/bias

2Adam/m/sequential/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/m/sequential/dense_1/bias*
_output_shapes	
:*
dtype0

 Adam/v/sequential/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*1
shared_name" Adam/v/sequential/dense_1/kernel

4Adam/v/sequential/dense_1/kernel/Read/ReadVariableOpReadVariableOp Adam/v/sequential/dense_1/kernel* 
_output_shapes
:
*
dtype0

 Adam/m/sequential/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*1
shared_name" Adam/m/sequential/dense_1/kernel

4Adam/m/sequential/dense_1/kernel/Read/ReadVariableOpReadVariableOp Adam/m/sequential/dense_1/kernel* 
_output_shapes
:
*
dtype0

Adam/v/sequential/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/v/sequential/dense/bias

0Adam/v/sequential/dense/bias/Read/ReadVariableOpReadVariableOpAdam/v/sequential/dense/bias*
_output_shapes	
:*
dtype0

Adam/m/sequential/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/m/sequential/dense/bias

0Adam/m/sequential/dense/bias/Read/ReadVariableOpReadVariableOpAdam/m/sequential/dense/bias*
_output_shapes	
:*
dtype0

Adam/v/sequential/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*/
shared_name Adam/v/sequential/dense/kernel

2Adam/v/sequential/dense/kernel/Read/ReadVariableOpReadVariableOpAdam/v/sequential/dense/kernel*
_output_shapes
:	*
dtype0

Adam/m/sequential/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*/
shared_name Adam/m/sequential/dense/kernel

2Adam/m/sequential/dense/kernel/Read/ReadVariableOpReadVariableOpAdam/m/sequential/dense/kernel*
_output_shapes
:	*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	

sequential/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:д*(
shared_namesequential/dense_3/bias

+sequential/dense_3/bias/Read/ReadVariableOpReadVariableOpsequential/dense_3/bias*
_output_shapes	
:д*
dtype0

sequential/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
д**
shared_namesequential/dense_3/kernel

-sequential/dense_3/kernel/Read/ReadVariableOpReadVariableOpsequential/dense_3/kernel* 
_output_shapes
:
д*
dtype0

sequential/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_namesequential/dense_2/bias

+sequential/dense_2/bias/Read/ReadVariableOpReadVariableOpsequential/dense_2/bias*
_output_shapes	
:*
dtype0

sequential/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
**
shared_namesequential/dense_2/kernel

-sequential/dense_2/kernel/Read/ReadVariableOpReadVariableOpsequential/dense_2/kernel* 
_output_shapes
:
*
dtype0

sequential/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_namesequential/dense_1/bias

+sequential/dense_1/bias/Read/ReadVariableOpReadVariableOpsequential/dense_1/bias*
_output_shapes	
:*
dtype0

sequential/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
**
shared_namesequential/dense_1/kernel

-sequential/dense_1/kernel/Read/ReadVariableOpReadVariableOpsequential/dense_1/kernel* 
_output_shapes
:
*
dtype0

sequential/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_namesequential/dense/bias
|
)sequential/dense/bias/Read/ReadVariableOpReadVariableOpsequential/dense/bias*
_output_shapes	
:*
dtype0

sequential/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*(
shared_namesequential/dense/kernel

+sequential/dense/kernel/Read/ReadVariableOpReadVariableOpsequential/dense/kernel*
_output_shapes
:	*
dtype0
v
serving_default_jenis_hewanPlaceholder*#
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
s
serving_default_latitudePlaceholder*#
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
t
serving_default_longitudePlaceholder*#
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
т
StatefulPartitionedCallStatefulPartitionedCallserving_default_jenis_hewanserving_default_latitudeserving_default_longitude
hash_tableConst_2sequential/dense/kernelsequential/dense/biassequential/dense_1/kernelsequential/dense_1/biassequential/dense_2/kernelsequential/dense_2/biassequential/dense_3/kernelsequential/dense_3/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџд**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *.
f)R'
%__inference_signature_wrapper_6163154
Ъ
StatefulPartitionedCall_1StatefulPartitionedCall
hash_tableConstConst_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *&
 _has_manual_control_dependencies(*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__initializer_6163595
(
NoOpNoOp^StatefulPartitionedCall_1
з?
Const_3Const"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? Bќ>

layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
_build_input_shape

signatures*
Д
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_feature_columns

_resources* 
І
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
І
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses

&kernel
'bias*
І
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses

.kernel
/bias*
І
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses

6kernel
7bias*
<
0
1
&2
'3
.4
/5
66
77*
<
0
1
&2
'3
.4
/5
66
77*
* 
А
8non_trainable_variables

9layers
:metrics
;layer_regularization_losses
<layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
=trace_0
>trace_1
?trace_2
@trace_3* 
6
Atrace_0
Btrace_1
Ctrace_2
Dtrace_3* 

E	capture_1* 

F
_variables
G_iterations
H_learning_rate
I_index_dict
J
_momentums
K_velocities
L_update_step_xla*
* 

Mserving_default* 
* 
* 
* 

Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

Strace_0
Ttrace_1* 

Utrace_0
Vtrace_1* 
* 

Wjenis_hewan* 

0
1*

0
1*
* 

Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

]trace_0* 

^trace_0* 
ga
VARIABLE_VALUEsequential/dense/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEsequential/dense/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

&0
'1*

&0
'1*
* 

_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses*

dtrace_0* 

etrace_0* 
ic
VARIABLE_VALUEsequential/dense_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEsequential/dense_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

.0
/1*

.0
/1*
* 

fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses*

ktrace_0* 

ltrace_0* 
ic
VARIABLE_VALUEsequential/dense_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEsequential/dense_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

60
71*

60
71*
* 

mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses*

rtrace_0* 

strace_0* 
ic
VARIABLE_VALUEsequential/dense_3/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEsequential/dense_3/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
'
0
1
2
3
4*

t0
u1*
* 
* 

E	capture_1* 

E	capture_1* 

E	capture_1* 

E	capture_1* 

E	capture_1* 

E	capture_1* 

E	capture_1* 

E	capture_1* 
* 

G0
v1
w2
x3
y4
z5
{6
|7
}8
~9
10
11
12
13
14
15
16*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
?
v0
x1
z2
|3
~4
5
6
7*
?
w0
y1
{2
}3
4
5
6
7*
* 

E	capture_1* 
* 
* 
* 
* 
* 

E	capture_1* 

E	capture_1* 

E	capture_1* 

E	capture_1* 

jenis_hewan_lookup* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
	variables
	keras_api

total

count*
M
	variables
	keras_api

total

count

_fn_kwargs*
ic
VARIABLE_VALUEAdam/m/sequential/dense/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/v/sequential/dense/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/m/sequential/dense/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/v/sequential/dense/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE Adam/m/sequential/dense_1/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE Adam/v/sequential/dense_1/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/m/sequential/dense_1/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/v/sequential/dense_1/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE Adam/m/sequential/dense_2/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE Adam/v/sequential/dense_2/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/m/sequential/dense_2/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/v/sequential/dense_2/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE Adam/m/sequential/dense_3/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE Adam/v/sequential/dense_3/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/m/sequential/dense_3/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/v/sequential/dense_3/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
V
_initializer
_create_resource
_initialize
_destroy_resource* 

0
1*

	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

trace_0* 

trace_0* 

trace_0* 
* 
"
	capture_1
	capture_2* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ђ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename+sequential/dense/kernel/Read/ReadVariableOp)sequential/dense/bias/Read/ReadVariableOp-sequential/dense_1/kernel/Read/ReadVariableOp+sequential/dense_1/bias/Read/ReadVariableOp-sequential/dense_2/kernel/Read/ReadVariableOp+sequential/dense_2/bias/Read/ReadVariableOp-sequential/dense_3/kernel/Read/ReadVariableOp+sequential/dense_3/bias/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp2Adam/m/sequential/dense/kernel/Read/ReadVariableOp2Adam/v/sequential/dense/kernel/Read/ReadVariableOp0Adam/m/sequential/dense/bias/Read/ReadVariableOp0Adam/v/sequential/dense/bias/Read/ReadVariableOp4Adam/m/sequential/dense_1/kernel/Read/ReadVariableOp4Adam/v/sequential/dense_1/kernel/Read/ReadVariableOp2Adam/m/sequential/dense_1/bias/Read/ReadVariableOp2Adam/v/sequential/dense_1/bias/Read/ReadVariableOp4Adam/m/sequential/dense_2/kernel/Read/ReadVariableOp4Adam/v/sequential/dense_2/kernel/Read/ReadVariableOp2Adam/m/sequential/dense_2/bias/Read/ReadVariableOp2Adam/v/sequential/dense_2/bias/Read/ReadVariableOp4Adam/m/sequential/dense_3/kernel/Read/ReadVariableOp4Adam/v/sequential/dense_3/kernel/Read/ReadVariableOp2Adam/m/sequential/dense_3/bias/Read/ReadVariableOp2Adam/v/sequential/dense_3/bias/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst_3*+
Tin$
"2 	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__traced_save_6163720
У
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenamesequential/dense/kernelsequential/dense/biassequential/dense_1/kernelsequential/dense_1/biassequential/dense_2/kernelsequential/dense_2/biassequential/dense_3/kernelsequential/dense_3/bias	iterationlearning_rateAdam/m/sequential/dense/kernelAdam/v/sequential/dense/kernelAdam/m/sequential/dense/biasAdam/v/sequential/dense/bias Adam/m/sequential/dense_1/kernel Adam/v/sequential/dense_1/kernelAdam/m/sequential/dense_1/biasAdam/v/sequential/dense_1/bias Adam/m/sequential/dense_2/kernel Adam/v/sequential/dense_2/kernelAdam/m/sequential/dense_2/biasAdam/v/sequential/dense_2/bias Adam/m/sequential/dense_3/kernel Adam/v/sequential/dense_3/kernelAdam/m/sequential/dense_3/biasAdam/v/sequential/dense_3/biastotal_1count_1totalcount**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference__traced_restore_6163820ып
Ё

,__inference_sequential_layer_call_fn_6163061
jenis_hewan
latitude
	longitude
unknown
	unknown_0	
	unknown_1:	
	unknown_2:	
	unknown_3:

	unknown_4:	
	unknown_5:

	unknown_6:	
	unknown_7:
д
	unknown_8:	д
identityЂStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCalljenis_hewanlatitude	longitudeunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџд**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_6163011p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџд`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
#
_output_shapes
:џџџџџџџџџ
%
_user_specified_namejenis_hewan:MI
#
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
latitude:NJ
#
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	longitude:

_output_shapes
: 


#__inference__traced_restore_6163820
file_prefix;
(assignvariableop_sequential_dense_kernel:	7
(assignvariableop_1_sequential_dense_bias:	@
,assignvariableop_2_sequential_dense_1_kernel:
9
*assignvariableop_3_sequential_dense_1_bias:	@
,assignvariableop_4_sequential_dense_2_kernel:
9
*assignvariableop_5_sequential_dense_2_bias:	@
,assignvariableop_6_sequential_dense_3_kernel:
д9
*assignvariableop_7_sequential_dense_3_bias:	д&
assignvariableop_8_iteration:	 *
 assignvariableop_9_learning_rate: E
2assignvariableop_10_adam_m_sequential_dense_kernel:	E
2assignvariableop_11_adam_v_sequential_dense_kernel:	?
0assignvariableop_12_adam_m_sequential_dense_bias:	?
0assignvariableop_13_adam_v_sequential_dense_bias:	H
4assignvariableop_14_adam_m_sequential_dense_1_kernel:
H
4assignvariableop_15_adam_v_sequential_dense_1_kernel:
A
2assignvariableop_16_adam_m_sequential_dense_1_bias:	A
2assignvariableop_17_adam_v_sequential_dense_1_bias:	H
4assignvariableop_18_adam_m_sequential_dense_2_kernel:
H
4assignvariableop_19_adam_v_sequential_dense_2_kernel:
A
2assignvariableop_20_adam_m_sequential_dense_2_bias:	A
2assignvariableop_21_adam_v_sequential_dense_2_bias:	H
4assignvariableop_22_adam_m_sequential_dense_3_kernel:
дH
4assignvariableop_23_adam_v_sequential_dense_3_kernel:
дA
2assignvariableop_24_adam_m_sequential_dense_3_bias:	дA
2assignvariableop_25_adam_v_sequential_dense_3_bias:	д%
assignvariableop_26_total_1: %
assignvariableop_27_count_1: #
assignvariableop_28_total: #
assignvariableop_29_count: 
identity_31ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9Л
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*с
valueзBдB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЎ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B К
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes~
|:::::::::::::::::::::::::::::::*-
dtypes#
!2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOpAssignVariableOp(assignvariableop_sequential_dense_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_1AssignVariableOp(assignvariableop_1_sequential_dense_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_2AssignVariableOp,assignvariableop_2_sequential_dense_1_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_3AssignVariableOp*assignvariableop_3_sequential_dense_1_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_4AssignVariableOp,assignvariableop_4_sequential_dense_2_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_5AssignVariableOp*assignvariableop_5_sequential_dense_2_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_6AssignVariableOp,assignvariableop_6_sequential_dense_3_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_7AssignVariableOp*assignvariableop_7_sequential_dense_3_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:Г
AssignVariableOp_8AssignVariableOpassignvariableop_8_iterationIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_9AssignVariableOp assignvariableop_9_learning_rateIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_10AssignVariableOp2assignvariableop_10_adam_m_sequential_dense_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_11AssignVariableOp2assignvariableop_11_adam_v_sequential_dense_kernelIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_12AssignVariableOp0assignvariableop_12_adam_m_sequential_dense_biasIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_13AssignVariableOp0assignvariableop_13_adam_v_sequential_dense_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_14AssignVariableOp4assignvariableop_14_adam_m_sequential_dense_1_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_15AssignVariableOp4assignvariableop_15_adam_v_sequential_dense_1_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_16AssignVariableOp2assignvariableop_16_adam_m_sequential_dense_1_biasIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_17AssignVariableOp2assignvariableop_17_adam_v_sequential_dense_1_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_18AssignVariableOp4assignvariableop_18_adam_m_sequential_dense_2_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_19AssignVariableOp4assignvariableop_19_adam_v_sequential_dense_2_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_20AssignVariableOp2assignvariableop_20_adam_m_sequential_dense_2_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_21AssignVariableOp2assignvariableop_21_adam_v_sequential_dense_2_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_22AssignVariableOp4assignvariableop_22_adam_m_sequential_dense_3_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_23AssignVariableOp4assignvariableop_23_adam_v_sequential_dense_3_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_24AssignVariableOp2assignvariableop_24_adam_m_sequential_dense_3_biasIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_25AssignVariableOp2assignvariableop_25_adam_v_sequential_dense_3_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_26AssignVariableOpassignvariableop_26_total_1Identity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_27AssignVariableOpassignvariableop_27_count_1Identity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_28AssignVariableOpassignvariableop_28_totalIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_29AssignVariableOpassignvariableop_29_countIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 у
Identity_30Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_31IdentityIdentity_30:output:0^NoOp_1*
T0*
_output_shapes
: а
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_31Identity_31:output:0*Q
_input_shapes@
>: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ё

,__inference_sequential_layer_call_fn_6162832
jenis_hewan
latitude
	longitude
unknown
	unknown_0	
	unknown_1:	
	unknown_2:	
	unknown_3:

	unknown_4:	
	unknown_5:

	unknown_6:	
	unknown_7:
д
	unknown_8:	д
identityЂStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCalljenis_hewanlatitude	longitudeunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџд**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_6162809p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџд`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
#
_output_shapes
:џџџџџџџџџ
%
_user_specified_namejenis_hewan:MI
#
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
latitude:NJ
#
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	longitude:

_output_shapes
: 
і
ў
G__inference_sequential_layer_call_and_return_conditional_losses_6163123
jenis_hewan
latitude
	longitude
dense_features_6163097
dense_features_6163099	 
dense_6163102:	
dense_6163104:	#
dense_1_6163107:

dense_1_6163109:	#
dense_2_6163112:

dense_2_6163114:	#
dense_3_6163117:
д
dense_3_6163119:	д
identityЂdense/StatefulPartitionedCallЂdense_1/StatefulPartitionedCallЂdense_2/StatefulPartitionedCallЂdense_3/StatefulPartitionedCallЂ&dense_features/StatefulPartitionedCallЃ
&dense_features/StatefulPartitionedCallStatefulPartitionedCalljenis_hewanlatitude	longitudedense_features_6163097dense_features_6163099*
Tin	
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_dense_features_layer_call_and_return_conditional_losses_6162942
dense/StatefulPartitionedCallStatefulPartitionedCall/dense_features/StatefulPartitionedCall:output:0dense_6163102dense_6163104*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_6162751
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_6163107dense_1_6163109*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_6162768
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_6163112dense_2_6163114*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_6162785
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_6163117dense_3_6163119*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџд*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_6162802x
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџдѕ
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall'^dense_features/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2P
&dense_features/StatefulPartitionedCall&dense_features/StatefulPartitionedCall:P L
#
_output_shapes
:џџџџџџџџџ
%
_user_specified_namejenis_hewan:MI
#
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
latitude:NJ
#
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	longitude:

_output_shapes
: 
Ї

ј
D__inference_dense_2_layer_call_and_return_conditional_losses_6163562

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ї

ј
D__inference_dense_2_layer_call_and_return_conditional_losses_6162785

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ё

ѕ
B__inference_dense_layer_call_and_return_conditional_losses_6163522

inputs1
matmul_readvariableop_resource:	.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ь>
Я
K__inference_dense_features_layer_call_and_return_conditional_losses_6162942
features

features_1

features_2D
@jenis_hewan_indicator_none_lookup_lookuptablefindv2_table_handleE
Ajenis_hewan_indicator_none_lookup_lookuptablefindv2_default_value	
identityЂ3jenis_hewan_indicator/None_Lookup/LookupTableFindV2o
$jenis_hewan_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
 jenis_hewan_indicator/ExpandDims
ExpandDimsfeatures-jenis_hewan_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:џџџџџџџџџu
4jenis_hewan_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ж
.jenis_hewan_indicator/to_sparse_input/NotEqualNotEqual)jenis_hewan_indicator/ExpandDims:output:0=jenis_hewan_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
-jenis_hewan_indicator/to_sparse_input/indicesWhere2jenis_hewan_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:џџџџџџџџџо
,jenis_hewan_indicator/to_sparse_input/valuesGatherNd)jenis_hewan_indicator/ExpandDims:output:05jenis_hewan_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:џџџџџџџџџ
1jenis_hewan_indicator/to_sparse_input/dense_shapeShape)jenis_hewan_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	Р
3jenis_hewan_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2@jenis_hewan_indicator_none_lookup_lookuptablefindv2_table_handle5jenis_hewan_indicator/to_sparse_input/values:output:0Ajenis_hewan_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:џџџџџџџџџ|
1jenis_hewan_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
џџџџџџџџџу
#jenis_hewan_indicator/SparseToDenseSparseToDense5jenis_hewan_indicator/to_sparse_input/indices:index:0:jenis_hewan_indicator/to_sparse_input/dense_shape:output:0<jenis_hewan_indicator/None_Lookup/LookupTableFindV2:values:0:jenis_hewan_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:џџџџџџџџџh
#jenis_hewan_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?j
%jenis_hewan_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    e
#jenis_hewan_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :
jenis_hewan_indicator/one_hotOneHot+jenis_hewan_indicator/SparseToDense:dense:0,jenis_hewan_indicator/one_hot/depth:output:0,jenis_hewan_indicator/one_hot/Const:output:0.jenis_hewan_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ~
+jenis_hewan_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
ўџџџџџџџџА
jenis_hewan_indicator/SumSum&jenis_hewan_indicator/one_hot:output:04jenis_hewan_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:џџџџџџџџџm
jenis_hewan_indicator/ShapeShape"jenis_hewan_indicator/Sum:output:0*
T0*
_output_shapes
:s
)jenis_hewan_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+jenis_hewan_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+jenis_hewan_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:П
#jenis_hewan_indicator/strided_sliceStridedSlice$jenis_hewan_indicator/Shape:output:02jenis_hewan_indicator/strided_slice/stack:output:04jenis_hewan_indicator/strided_slice/stack_1:output:04jenis_hewan_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%jenis_hewan_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :З
#jenis_hewan_indicator/Reshape/shapePack,jenis_hewan_indicator/strided_slice:output:0.jenis_hewan_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:Ќ
jenis_hewan_indicator/ReshapeReshape"jenis_hewan_indicator/Sum:output:0,jenis_hewan_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџb
latitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
latitude/ExpandDims
ExpandDims
features_1 latitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:џџџџџџџџџZ
latitude/ShapeShapelatitude/ExpandDims:output:0*
T0*
_output_shapes
:f
latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
latitude/strided_sliceStridedSlicelatitude/Shape:output:0%latitude/strided_slice/stack:output:0'latitude/strided_slice/stack_1:output:0'latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
latitude/Reshape/shapePacklatitude/strided_slice:output:0!latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
latitude/ReshapeReshapelatitude/ExpandDims:output:0latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџc
longitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
longitude/ExpandDims
ExpandDims
features_2!longitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:џџџџџџџџџ\
longitude/ShapeShapelongitude/ExpandDims:output:0*
T0*
_output_shapes
:g
longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
longitude/strided_sliceStridedSlicelongitude/Shape:output:0&longitude/strided_slice/stack:output:0(longitude/strided_slice/stack_1:output:0(longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
longitude/Reshape/shapePack longitude/strided_slice:output:0"longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
longitude/ReshapeReshapelongitude/ExpandDims:output:0 longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџV
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџТ
concatConcatV2&jenis_hewan_indicator/Reshape:output:0latitude/Reshape:output:0longitude/Reshape:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:џџџџџџџџџ^
IdentityIdentityconcat:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ|
NoOpNoOp4^jenis_hewan_indicator/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : 2j
3jenis_hewan_indicator/None_Lookup/LookupTableFindV23jenis_hewan_indicator/None_Lookup/LookupTableFindV2:M I
#
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
features:MI
#
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
features:MI
#
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
features:

_output_shapes
: 
l
и
G__inference_sequential_layer_call_and_return_conditional_losses_6163290
inputs_jenis_hewan
inputs_latitude
inputs_longitudeS
Odense_features_jenis_hewan_indicator_none_lookup_lookuptablefindv2_table_handleT
Pdense_features_jenis_hewan_indicator_none_lookup_lookuptablefindv2_default_value	7
$dense_matmul_readvariableop_resource:	4
%dense_biasadd_readvariableop_resource:	:
&dense_1_matmul_readvariableop_resource:
6
'dense_1_biasadd_readvariableop_resource:	:
&dense_2_matmul_readvariableop_resource:
6
'dense_2_biasadd_readvariableop_resource:	:
&dense_3_matmul_readvariableop_resource:
д6
'dense_3_biasadd_readvariableop_resource:	д
identityЂdense/BiasAdd/ReadVariableOpЂdense/MatMul/ReadVariableOpЂdense_1/BiasAdd/ReadVariableOpЂdense_1/MatMul/ReadVariableOpЂdense_2/BiasAdd/ReadVariableOpЂdense_2/MatMul/ReadVariableOpЂdense_3/BiasAdd/ReadVariableOpЂdense_3/MatMul/ReadVariableOpЂBdense_features/jenis_hewan_indicator/None_Lookup/LookupTableFindV2~
3dense_features/jenis_hewan_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџС
/dense_features/jenis_hewan_indicator/ExpandDims
ExpandDimsinputs_jenis_hewan<dense_features/jenis_hewan_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
Cdense_features/jenis_hewan_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B 
=dense_features/jenis_hewan_indicator/to_sparse_input/NotEqualNotEqual8dense_features/jenis_hewan_indicator/ExpandDims:output:0Ldense_features/jenis_hewan_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:џџџџџџџџџБ
<dense_features/jenis_hewan_indicator/to_sparse_input/indicesWhereAdense_features/jenis_hewan_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:џџџџџџџџџ
;dense_features/jenis_hewan_indicator/to_sparse_input/valuesGatherNd8dense_features/jenis_hewan_indicator/ExpandDims:output:0Ddense_features/jenis_hewan_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:џџџџџџџџџИ
@dense_features/jenis_hewan_indicator/to_sparse_input/dense_shapeShape8dense_features/jenis_hewan_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	ќ
Bdense_features/jenis_hewan_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2Odense_features_jenis_hewan_indicator_none_lookup_lookuptablefindv2_table_handleDdense_features/jenis_hewan_indicator/to_sparse_input/values:output:0Pdense_features_jenis_hewan_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:џџџџџџџџџ
@dense_features/jenis_hewan_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
џџџџџџџџџЎ
2dense_features/jenis_hewan_indicator/SparseToDenseSparseToDenseDdense_features/jenis_hewan_indicator/to_sparse_input/indices:index:0Idense_features/jenis_hewan_indicator/to_sparse_input/dense_shape:output:0Kdense_features/jenis_hewan_indicator/None_Lookup/LookupTableFindV2:values:0Idense_features/jenis_hewan_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:џџџџџџџџџw
2dense_features/jenis_hewan_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?y
4dense_features/jenis_hewan_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    t
2dense_features/jenis_hewan_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :с
,dense_features/jenis_hewan_indicator/one_hotOneHot:dense_features/jenis_hewan_indicator/SparseToDense:dense:0;dense_features/jenis_hewan_indicator/one_hot/depth:output:0;dense_features/jenis_hewan_indicator/one_hot/Const:output:0=dense_features/jenis_hewan_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
:dense_features/jenis_hewan_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
ўџџџџџџџџн
(dense_features/jenis_hewan_indicator/SumSum5dense_features/jenis_hewan_indicator/one_hot:output:0Cdense_features/jenis_hewan_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
*dense_features/jenis_hewan_indicator/ShapeShape1dense_features/jenis_hewan_indicator/Sum:output:0*
T0*
_output_shapes
:
8dense_features/jenis_hewan_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
:dense_features/jenis_hewan_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
:dense_features/jenis_hewan_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
2dense_features/jenis_hewan_indicator/strided_sliceStridedSlice3dense_features/jenis_hewan_indicator/Shape:output:0Adense_features/jenis_hewan_indicator/strided_slice/stack:output:0Cdense_features/jenis_hewan_indicator/strided_slice/stack_1:output:0Cdense_features/jenis_hewan_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
4dense_features/jenis_hewan_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :ф
2dense_features/jenis_hewan_indicator/Reshape/shapePack;dense_features/jenis_hewan_indicator/strided_slice:output:0=dense_features/jenis_hewan_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:й
,dense_features/jenis_hewan_indicator/ReshapeReshape1dense_features/jenis_hewan_indicator/Sum:output:0;dense_features/jenis_hewan_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџq
&dense_features/latitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЄ
"dense_features/latitude/ExpandDims
ExpandDimsinputs_latitude/dense_features/latitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:џџџџџџџџџx
dense_features/latitude/ShapeShape+dense_features/latitude/ExpandDims:output:0*
T0*
_output_shapes
:u
+dense_features/latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-dense_features/latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-dense_features/latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
%dense_features/latitude/strided_sliceStridedSlice&dense_features/latitude/Shape:output:04dense_features/latitude/strided_slice/stack:output:06dense_features/latitude/strided_slice/stack_1:output:06dense_features/latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'dense_features/latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Н
%dense_features/latitude/Reshape/shapePack.dense_features/latitude/strided_slice:output:00dense_features/latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:Й
dense_features/latitude/ReshapeReshape+dense_features/latitude/ExpandDims:output:0.dense_features/latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџr
'dense_features/longitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЇ
#dense_features/longitude/ExpandDims
ExpandDimsinputs_longitude0dense_features/longitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:џџџџџџџџџz
dense_features/longitude/ShapeShape,dense_features/longitude/ExpandDims:output:0*
T0*
_output_shapes
:v
,dense_features/longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.dense_features/longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.dense_features/longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ю
&dense_features/longitude/strided_sliceStridedSlice'dense_features/longitude/Shape:output:05dense_features/longitude/strided_slice/stack:output:07dense_features/longitude/strided_slice/stack_1:output:07dense_features/longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
(dense_features/longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Р
&dense_features/longitude/Reshape/shapePack/dense_features/longitude/strided_slice:output:01dense_features/longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:М
 dense_features/longitude/ReshapeReshape,dense_features/longitude/ExpandDims:output:0/dense_features/longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџe
dense_features/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
dense_features/concatConcatV25dense_features/jenis_hewan_indicator/Reshape:output:0(dense_features/latitude/Reshape:output:0)dense_features/longitude/Reshape:output:0#dense_features/concat/axis:output:0*
N*
T0*'
_output_shapes
:џџџџџџџџџ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense/MatMulMatMuldense_features/concat:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџa
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџa
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource* 
_output_shapes
:
д*
dtype0
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџд
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
:д*
dtype0
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџдg
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџдi
IdentityIdentitydense_3/Softmax:softmax:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџд
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOpC^dense_features/jenis_hewan_indicator/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2
Bdense_features/jenis_hewan_indicator/None_Lookup/LookupTableFindV2Bdense_features/jenis_hewan_indicator/None_Lookup/LookupTableFindV2:W S
#
_output_shapes
:џџџџџџџџџ
,
_user_specified_nameinputs_jenis_hewan:TP
#
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameinputs_latitude:UQ
#
_output_shapes
:џџџџџџџџџ
*
_user_specified_nameinputs_longitude:

_output_shapes
: 
Ќ

ј
D__inference_dense_3_layer_call_and_return_conditional_losses_6163582

inputs2
matmul_readvariableop_resource:
д.
biasadd_readvariableop_resource:	д
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
д*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџдs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:д*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџдW
SoftmaxSoftmaxBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџдa
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџдw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ѕ
џ
%__inference_signature_wrapper_6163154
jenis_hewan
latitude
	longitude
unknown
	unknown_0	
	unknown_1:	
	unknown_2:	
	unknown_3:

	unknown_4:	
	unknown_5:

	unknown_6:	
	unknown_7:
д
	unknown_8:	д
identityЂStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCalljenis_hewanlatitude	longitudeunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџд**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__wrapped_model_6162669p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџд`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
#
_output_shapes
:џџџџџџџџџ
%
_user_specified_namejenis_hewan:MI
#
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
latitude:NJ
#
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	longitude:

_output_shapes
: 
р

,__inference_sequential_layer_call_fn_6163181
inputs_jenis_hewan
inputs_latitude
inputs_longitude
unknown
	unknown_0	
	unknown_1:	
	unknown_2:	
	unknown_3:

	unknown_4:	
	unknown_5:

	unknown_6:	
	unknown_7:
д
	unknown_8:	д
identityЂStatefulPartitionedCallє
StatefulPartitionedCallStatefulPartitionedCallinputs_jenis_hewaninputs_latitudeinputs_longitudeunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџд**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_6162809p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџд`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
#
_output_shapes
:џџџџџџџџџ
,
_user_specified_nameinputs_jenis_hewan:TP
#
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameinputs_latitude:UQ
#
_output_shapes
:џџџџџџџџџ
*
_user_specified_nameinputs_longitude:

_output_shapes
: 
Т

'__inference_dense_layer_call_fn_6163511

inputs
unknown:	
	unknown_0:	
identityЂStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_6162751p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
р

,__inference_sequential_layer_call_fn_6163208
inputs_jenis_hewan
inputs_latitude
inputs_longitude
unknown
	unknown_0	
	unknown_1:	
	unknown_2:	
	unknown_3:

	unknown_4:	
	unknown_5:

	unknown_6:	
	unknown_7:
д
	unknown_8:	д
identityЂStatefulPartitionedCallє
StatefulPartitionedCallStatefulPartitionedCallinputs_jenis_hewaninputs_latitudeinputs_longitudeunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџд**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_6163011p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџд`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
#
_output_shapes
:џџџџџџџџџ
,
_user_specified_nameinputs_jenis_hewan:TP
#
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameinputs_latitude:UQ
#
_output_shapes
:џџџџџџџџџ
*
_user_specified_nameinputs_longitude:

_output_shapes
: 
Ї

ј
D__inference_dense_1_layer_call_and_return_conditional_losses_6162768

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
р
ј
G__inference_sequential_layer_call_and_return_conditional_losses_6163011

inputs
inputs_1
inputs_2
dense_features_6162985
dense_features_6162987	 
dense_6162990:	
dense_6162992:	#
dense_1_6162995:

dense_1_6162997:	#
dense_2_6163000:

dense_2_6163002:	#
dense_3_6163005:
д
dense_3_6163007:	д
identityЂdense/StatefulPartitionedCallЂdense_1/StatefulPartitionedCallЂdense_2/StatefulPartitionedCallЂdense_3/StatefulPartitionedCallЂ&dense_features/StatefulPartitionedCall
&dense_features/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2dense_features_6162985dense_features_6162987*
Tin	
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_dense_features_layer_call_and_return_conditional_losses_6162942
dense/StatefulPartitionedCallStatefulPartitionedCall/dense_features/StatefulPartitionedCall:output:0dense_6162990dense_6162992*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_6162751
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_6162995dense_1_6162997*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_6162768
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_6163000dense_2_6163002*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_6162785
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_6163005dense_3_6163007*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџд*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_6162802x
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџдѕ
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall'^dense_features/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2P
&dense_features/StatefulPartitionedCall&dense_features/StatefulPartitionedCall:K G
#
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:KG
#
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:KG
#
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:

_output_shapes
: 
Щ

)__inference_dense_3_layer_call_fn_6163571

inputs
unknown:
д
	unknown_0:	д
identityЂStatefulPartitionedCallк
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџд*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_6162802p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџд`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

.
__inference__destroyer_6163600
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
С?
ъ
K__inference_dense_features_layer_call_and_return_conditional_losses_6163502
features_jenis_hewan
features_latitude
features_longitudeD
@jenis_hewan_indicator_none_lookup_lookuptablefindv2_table_handleE
Ajenis_hewan_indicator_none_lookup_lookuptablefindv2_default_value	
identityЂ3jenis_hewan_indicator/None_Lookup/LookupTableFindV2o
$jenis_hewan_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЅ
 jenis_hewan_indicator/ExpandDims
ExpandDimsfeatures_jenis_hewan-jenis_hewan_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:џџџџџџџџџu
4jenis_hewan_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ж
.jenis_hewan_indicator/to_sparse_input/NotEqualNotEqual)jenis_hewan_indicator/ExpandDims:output:0=jenis_hewan_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
-jenis_hewan_indicator/to_sparse_input/indicesWhere2jenis_hewan_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:џџџџџџџџџо
,jenis_hewan_indicator/to_sparse_input/valuesGatherNd)jenis_hewan_indicator/ExpandDims:output:05jenis_hewan_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:џџџџџџџџџ
1jenis_hewan_indicator/to_sparse_input/dense_shapeShape)jenis_hewan_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	Р
3jenis_hewan_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2@jenis_hewan_indicator_none_lookup_lookuptablefindv2_table_handle5jenis_hewan_indicator/to_sparse_input/values:output:0Ajenis_hewan_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:џџџџџџџџџ|
1jenis_hewan_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
џџџџџџџџџу
#jenis_hewan_indicator/SparseToDenseSparseToDense5jenis_hewan_indicator/to_sparse_input/indices:index:0:jenis_hewan_indicator/to_sparse_input/dense_shape:output:0<jenis_hewan_indicator/None_Lookup/LookupTableFindV2:values:0:jenis_hewan_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:џџџџџџџџџh
#jenis_hewan_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?j
%jenis_hewan_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    e
#jenis_hewan_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :
jenis_hewan_indicator/one_hotOneHot+jenis_hewan_indicator/SparseToDense:dense:0,jenis_hewan_indicator/one_hot/depth:output:0,jenis_hewan_indicator/one_hot/Const:output:0.jenis_hewan_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ~
+jenis_hewan_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
ўџџџџџџџџА
jenis_hewan_indicator/SumSum&jenis_hewan_indicator/one_hot:output:04jenis_hewan_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:џџџџџџџџџm
jenis_hewan_indicator/ShapeShape"jenis_hewan_indicator/Sum:output:0*
T0*
_output_shapes
:s
)jenis_hewan_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+jenis_hewan_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+jenis_hewan_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:П
#jenis_hewan_indicator/strided_sliceStridedSlice$jenis_hewan_indicator/Shape:output:02jenis_hewan_indicator/strided_slice/stack:output:04jenis_hewan_indicator/strided_slice/stack_1:output:04jenis_hewan_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%jenis_hewan_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :З
#jenis_hewan_indicator/Reshape/shapePack,jenis_hewan_indicator/strided_slice:output:0.jenis_hewan_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:Ќ
jenis_hewan_indicator/ReshapeReshape"jenis_hewan_indicator/Sum:output:0,jenis_hewan_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџb
latitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
latitude/ExpandDims
ExpandDimsfeatures_latitude latitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:џџџџџџџџџZ
latitude/ShapeShapelatitude/ExpandDims:output:0*
T0*
_output_shapes
:f
latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
latitude/strided_sliceStridedSlicelatitude/Shape:output:0%latitude/strided_slice/stack:output:0'latitude/strided_slice/stack_1:output:0'latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
latitude/Reshape/shapePacklatitude/strided_slice:output:0!latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
latitude/ReshapeReshapelatitude/ExpandDims:output:0latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџc
longitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
longitude/ExpandDims
ExpandDimsfeatures_longitude!longitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:џџџџџџџџџ\
longitude/ShapeShapelongitude/ExpandDims:output:0*
T0*
_output_shapes
:g
longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
longitude/strided_sliceStridedSlicelongitude/Shape:output:0&longitude/strided_slice/stack:output:0(longitude/strided_slice/stack_1:output:0(longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
longitude/Reshape/shapePack longitude/strided_slice:output:0"longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
longitude/ReshapeReshapelongitude/ExpandDims:output:0 longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџV
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџТ
concatConcatV2&jenis_hewan_indicator/Reshape:output:0latitude/Reshape:output:0longitude/Reshape:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:џџџџџџџџџ^
IdentityIdentityconcat:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ|
NoOpNoOp4^jenis_hewan_indicator/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : 2j
3jenis_hewan_indicator/None_Lookup/LookupTableFindV23jenis_hewan_indicator/None_Lookup/LookupTableFindV2:Y U
#
_output_shapes
:џџџџџџџџџ
.
_user_specified_namefeatures_jenis_hewan:VR
#
_output_shapes
:џџџџџџџџџ
+
_user_specified_namefeatures_latitude:WS
#
_output_shapes
:џџџџџџџџџ
,
_user_specified_namefeatures_longitude:

_output_shapes
: 
l
и
G__inference_sequential_layer_call_and_return_conditional_losses_6163372
inputs_jenis_hewan
inputs_latitude
inputs_longitudeS
Odense_features_jenis_hewan_indicator_none_lookup_lookuptablefindv2_table_handleT
Pdense_features_jenis_hewan_indicator_none_lookup_lookuptablefindv2_default_value	7
$dense_matmul_readvariableop_resource:	4
%dense_biasadd_readvariableop_resource:	:
&dense_1_matmul_readvariableop_resource:
6
'dense_1_biasadd_readvariableop_resource:	:
&dense_2_matmul_readvariableop_resource:
6
'dense_2_biasadd_readvariableop_resource:	:
&dense_3_matmul_readvariableop_resource:
д6
'dense_3_biasadd_readvariableop_resource:	д
identityЂdense/BiasAdd/ReadVariableOpЂdense/MatMul/ReadVariableOpЂdense_1/BiasAdd/ReadVariableOpЂdense_1/MatMul/ReadVariableOpЂdense_2/BiasAdd/ReadVariableOpЂdense_2/MatMul/ReadVariableOpЂdense_3/BiasAdd/ReadVariableOpЂdense_3/MatMul/ReadVariableOpЂBdense_features/jenis_hewan_indicator/None_Lookup/LookupTableFindV2~
3dense_features/jenis_hewan_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџС
/dense_features/jenis_hewan_indicator/ExpandDims
ExpandDimsinputs_jenis_hewan<dense_features/jenis_hewan_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
Cdense_features/jenis_hewan_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B 
=dense_features/jenis_hewan_indicator/to_sparse_input/NotEqualNotEqual8dense_features/jenis_hewan_indicator/ExpandDims:output:0Ldense_features/jenis_hewan_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:џџџџџџџџџБ
<dense_features/jenis_hewan_indicator/to_sparse_input/indicesWhereAdense_features/jenis_hewan_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:џџџџџџџџџ
;dense_features/jenis_hewan_indicator/to_sparse_input/valuesGatherNd8dense_features/jenis_hewan_indicator/ExpandDims:output:0Ddense_features/jenis_hewan_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:џџџџџџџџџИ
@dense_features/jenis_hewan_indicator/to_sparse_input/dense_shapeShape8dense_features/jenis_hewan_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	ќ
Bdense_features/jenis_hewan_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2Odense_features_jenis_hewan_indicator_none_lookup_lookuptablefindv2_table_handleDdense_features/jenis_hewan_indicator/to_sparse_input/values:output:0Pdense_features_jenis_hewan_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:џџџџџџџџџ
@dense_features/jenis_hewan_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
џџџџџџџџџЎ
2dense_features/jenis_hewan_indicator/SparseToDenseSparseToDenseDdense_features/jenis_hewan_indicator/to_sparse_input/indices:index:0Idense_features/jenis_hewan_indicator/to_sparse_input/dense_shape:output:0Kdense_features/jenis_hewan_indicator/None_Lookup/LookupTableFindV2:values:0Idense_features/jenis_hewan_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:џџџџџџџџџw
2dense_features/jenis_hewan_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?y
4dense_features/jenis_hewan_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    t
2dense_features/jenis_hewan_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :с
,dense_features/jenis_hewan_indicator/one_hotOneHot:dense_features/jenis_hewan_indicator/SparseToDense:dense:0;dense_features/jenis_hewan_indicator/one_hot/depth:output:0;dense_features/jenis_hewan_indicator/one_hot/Const:output:0=dense_features/jenis_hewan_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
:dense_features/jenis_hewan_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
ўџџџџџџџџн
(dense_features/jenis_hewan_indicator/SumSum5dense_features/jenis_hewan_indicator/one_hot:output:0Cdense_features/jenis_hewan_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
*dense_features/jenis_hewan_indicator/ShapeShape1dense_features/jenis_hewan_indicator/Sum:output:0*
T0*
_output_shapes
:
8dense_features/jenis_hewan_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
:dense_features/jenis_hewan_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
:dense_features/jenis_hewan_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
2dense_features/jenis_hewan_indicator/strided_sliceStridedSlice3dense_features/jenis_hewan_indicator/Shape:output:0Adense_features/jenis_hewan_indicator/strided_slice/stack:output:0Cdense_features/jenis_hewan_indicator/strided_slice/stack_1:output:0Cdense_features/jenis_hewan_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
4dense_features/jenis_hewan_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :ф
2dense_features/jenis_hewan_indicator/Reshape/shapePack;dense_features/jenis_hewan_indicator/strided_slice:output:0=dense_features/jenis_hewan_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:й
,dense_features/jenis_hewan_indicator/ReshapeReshape1dense_features/jenis_hewan_indicator/Sum:output:0;dense_features/jenis_hewan_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџq
&dense_features/latitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЄ
"dense_features/latitude/ExpandDims
ExpandDimsinputs_latitude/dense_features/latitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:џџџџџџџџџx
dense_features/latitude/ShapeShape+dense_features/latitude/ExpandDims:output:0*
T0*
_output_shapes
:u
+dense_features/latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-dense_features/latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-dense_features/latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
%dense_features/latitude/strided_sliceStridedSlice&dense_features/latitude/Shape:output:04dense_features/latitude/strided_slice/stack:output:06dense_features/latitude/strided_slice/stack_1:output:06dense_features/latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'dense_features/latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Н
%dense_features/latitude/Reshape/shapePack.dense_features/latitude/strided_slice:output:00dense_features/latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:Й
dense_features/latitude/ReshapeReshape+dense_features/latitude/ExpandDims:output:0.dense_features/latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџr
'dense_features/longitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЇ
#dense_features/longitude/ExpandDims
ExpandDimsinputs_longitude0dense_features/longitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:џџџџџџџџџz
dense_features/longitude/ShapeShape,dense_features/longitude/ExpandDims:output:0*
T0*
_output_shapes
:v
,dense_features/longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.dense_features/longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.dense_features/longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ю
&dense_features/longitude/strided_sliceStridedSlice'dense_features/longitude/Shape:output:05dense_features/longitude/strided_slice/stack:output:07dense_features/longitude/strided_slice/stack_1:output:07dense_features/longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
(dense_features/longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Р
&dense_features/longitude/Reshape/shapePack/dense_features/longitude/strided_slice:output:01dense_features/longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:М
 dense_features/longitude/ReshapeReshape,dense_features/longitude/ExpandDims:output:0/dense_features/longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџe
dense_features/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
dense_features/concatConcatV25dense_features/jenis_hewan_indicator/Reshape:output:0(dense_features/latitude/Reshape:output:0)dense_features/longitude/Reshape:output:0#dense_features/concat/axis:output:0*
N*
T0*'
_output_shapes
:џџџџџџџџџ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense/MatMulMatMuldense_features/concat:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџa
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџa
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource* 
_output_shapes
:
д*
dtype0
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџд
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
:д*
dtype0
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџдg
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџдi
IdentityIdentitydense_3/Softmax:softmax:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџд
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOpC^dense_features/jenis_hewan_indicator/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2
Bdense_features/jenis_hewan_indicator/None_Lookup/LookupTableFindV2Bdense_features/jenis_hewan_indicator/None_Lookup/LookupTableFindV2:W S
#
_output_shapes
:џџџџџџџџџ
,
_user_specified_nameinputs_jenis_hewan:TP
#
_output_shapes
:џџџџџџџџџ
)
_user_specified_nameinputs_latitude:UQ
#
_output_shapes
:џџџџџџџџџ
*
_user_specified_nameinputs_longitude:

_output_shapes
: 
|
я	
"__inference__wrapped_model_6162669
jenis_hewan
latitude
	longitude^
Zsequential_dense_features_jenis_hewan_indicator_none_lookup_lookuptablefindv2_table_handle_
[sequential_dense_features_jenis_hewan_indicator_none_lookup_lookuptablefindv2_default_value	B
/sequential_dense_matmul_readvariableop_resource:	?
0sequential_dense_biasadd_readvariableop_resource:	E
1sequential_dense_1_matmul_readvariableop_resource:
A
2sequential_dense_1_biasadd_readvariableop_resource:	E
1sequential_dense_2_matmul_readvariableop_resource:
A
2sequential_dense_2_biasadd_readvariableop_resource:	E
1sequential_dense_3_matmul_readvariableop_resource:
дA
2sequential_dense_3_biasadd_readvariableop_resource:	д
identityЂ'sequential/dense/BiasAdd/ReadVariableOpЂ&sequential/dense/MatMul/ReadVariableOpЂ)sequential/dense_1/BiasAdd/ReadVariableOpЂ(sequential/dense_1/MatMul/ReadVariableOpЂ)sequential/dense_2/BiasAdd/ReadVariableOpЂ(sequential/dense_2/MatMul/ReadVariableOpЂ)sequential/dense_3/BiasAdd/ReadVariableOpЂ(sequential/dense_3/MatMul/ReadVariableOpЂMsequential/dense_features/jenis_hewan_indicator/None_Lookup/LookupTableFindV2
>sequential/dense_features/jenis_hewan_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџа
:sequential/dense_features/jenis_hewan_indicator/ExpandDims
ExpandDimsjenis_hewanGsequential/dense_features/jenis_hewan_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
Nsequential/dense_features/jenis_hewan_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B Є
Hsequential/dense_features/jenis_hewan_indicator/to_sparse_input/NotEqualNotEqualCsequential/dense_features/jenis_hewan_indicator/ExpandDims:output:0Wsequential/dense_features/jenis_hewan_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:џџџџџџџџџЧ
Gsequential/dense_features/jenis_hewan_indicator/to_sparse_input/indicesWhereLsequential/dense_features/jenis_hewan_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:џџџџџџџџџЌ
Fsequential/dense_features/jenis_hewan_indicator/to_sparse_input/valuesGatherNdCsequential/dense_features/jenis_hewan_indicator/ExpandDims:output:0Osequential/dense_features/jenis_hewan_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:џџџџџџџџџЮ
Ksequential/dense_features/jenis_hewan_indicator/to_sparse_input/dense_shapeShapeCsequential/dense_features/jenis_hewan_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	Ј
Msequential/dense_features/jenis_hewan_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2Zsequential_dense_features_jenis_hewan_indicator_none_lookup_lookuptablefindv2_table_handleOsequential/dense_features/jenis_hewan_indicator/to_sparse_input/values:output:0[sequential_dense_features_jenis_hewan_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:џџџџџџџџџ
Ksequential/dense_features/jenis_hewan_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
џџџџџџџџџх
=sequential/dense_features/jenis_hewan_indicator/SparseToDenseSparseToDenseOsequential/dense_features/jenis_hewan_indicator/to_sparse_input/indices:index:0Tsequential/dense_features/jenis_hewan_indicator/to_sparse_input/dense_shape:output:0Vsequential/dense_features/jenis_hewan_indicator/None_Lookup/LookupTableFindV2:values:0Tsequential/dense_features/jenis_hewan_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:џџџџџџџџџ
=sequential/dense_features/jenis_hewan_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
?sequential/dense_features/jenis_hewan_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
=sequential/dense_features/jenis_hewan_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :
7sequential/dense_features/jenis_hewan_indicator/one_hotOneHotEsequential/dense_features/jenis_hewan_indicator/SparseToDense:dense:0Fsequential/dense_features/jenis_hewan_indicator/one_hot/depth:output:0Fsequential/dense_features/jenis_hewan_indicator/one_hot/Const:output:0Hsequential/dense_features/jenis_hewan_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
Esequential/dense_features/jenis_hewan_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
ўџџџџџџџџў
3sequential/dense_features/jenis_hewan_indicator/SumSum@sequential/dense_features/jenis_hewan_indicator/one_hot:output:0Nsequential/dense_features/jenis_hewan_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:џџџџџџџџџЁ
5sequential/dense_features/jenis_hewan_indicator/ShapeShape<sequential/dense_features/jenis_hewan_indicator/Sum:output:0*
T0*
_output_shapes
:
Csequential/dense_features/jenis_hewan_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Esequential/dense_features/jenis_hewan_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Esequential/dense_features/jenis_hewan_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:С
=sequential/dense_features/jenis_hewan_indicator/strided_sliceStridedSlice>sequential/dense_features/jenis_hewan_indicator/Shape:output:0Lsequential/dense_features/jenis_hewan_indicator/strided_slice/stack:output:0Nsequential/dense_features/jenis_hewan_indicator/strided_slice/stack_1:output:0Nsequential/dense_features/jenis_hewan_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?sequential/dense_features/jenis_hewan_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
=sequential/dense_features/jenis_hewan_indicator/Reshape/shapePackFsequential/dense_features/jenis_hewan_indicator/strided_slice:output:0Hsequential/dense_features/jenis_hewan_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:њ
7sequential/dense_features/jenis_hewan_indicator/ReshapeReshape<sequential/dense_features/jenis_hewan_indicator/Sum:output:0Fsequential/dense_features/jenis_hewan_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ|
1sequential/dense_features/latitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџГ
-sequential/dense_features/latitude/ExpandDims
ExpandDimslatitude:sequential/dense_features/latitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
(sequential/dense_features/latitude/ShapeShape6sequential/dense_features/latitude/ExpandDims:output:0*
T0*
_output_shapes
:
6sequential/dense_features/latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
8sequential/dense_features/latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
8sequential/dense_features/latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
0sequential/dense_features/latitude/strided_sliceStridedSlice1sequential/dense_features/latitude/Shape:output:0?sequential/dense_features/latitude/strided_slice/stack:output:0Asequential/dense_features/latitude/strided_slice/stack_1:output:0Asequential/dense_features/latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
2sequential/dense_features/latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :о
0sequential/dense_features/latitude/Reshape/shapePack9sequential/dense_features/latitude/strided_slice:output:0;sequential/dense_features/latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:к
*sequential/dense_features/latitude/ReshapeReshape6sequential/dense_features/latitude/ExpandDims:output:09sequential/dense_features/latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ}
2sequential/dense_features/longitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЖ
.sequential/dense_features/longitude/ExpandDims
ExpandDims	longitude;sequential/dense_features/longitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
)sequential/dense_features/longitude/ShapeShape7sequential/dense_features/longitude/ExpandDims:output:0*
T0*
_output_shapes
:
7sequential/dense_features/longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
9sequential/dense_features/longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
9sequential/dense_features/longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
1sequential/dense_features/longitude/strided_sliceStridedSlice2sequential/dense_features/longitude/Shape:output:0@sequential/dense_features/longitude/strided_slice/stack:output:0Bsequential/dense_features/longitude/strided_slice/stack_1:output:0Bsequential/dense_features/longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
3sequential/dense_features/longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :с
1sequential/dense_features/longitude/Reshape/shapePack:sequential/dense_features/longitude/strided_slice:output:0<sequential/dense_features/longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:н
+sequential/dense_features/longitude/ReshapeReshape7sequential/dense_features/longitude/ExpandDims:output:0:sequential/dense_features/longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџp
%sequential/dense_features/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџФ
 sequential/dense_features/concatConcatV2@sequential/dense_features/jenis_hewan_indicator/Reshape:output:03sequential/dense_features/latitude/Reshape:output:04sequential/dense_features/longitude/Reshape:output:0.sequential/dense_features/concat/axis:output:0*
N*
T0*'
_output_shapes
:џџџџџџџџџ
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Џ
sequential/dense/MatMulMatMul)sequential/dense_features/concat:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Њ
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџs
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0­
sequential/dense_1/MatMulMatMul#sequential/dense/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0А
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџw
sequential/dense_1/ReluRelu#sequential/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
(sequential/dense_2/MatMul/ReadVariableOpReadVariableOp1sequential_dense_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0Џ
sequential/dense_2/MatMulMatMul%sequential/dense_1/Relu:activations:00sequential/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
)sequential/dense_2/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0А
sequential/dense_2/BiasAddBiasAdd#sequential/dense_2/MatMul:product:01sequential/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџw
sequential/dense_2/ReluRelu#sequential/dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
(sequential/dense_3/MatMul/ReadVariableOpReadVariableOp1sequential_dense_3_matmul_readvariableop_resource* 
_output_shapes
:
д*
dtype0Џ
sequential/dense_3/MatMulMatMul%sequential/dense_2/Relu:activations:00sequential/dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџд
)sequential/dense_3/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:д*
dtype0А
sequential/dense_3/BiasAddBiasAdd#sequential/dense_3/MatMul:product:01sequential/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџд}
sequential/dense_3/SoftmaxSoftmax#sequential/dense_3/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџдt
IdentityIdentity$sequential/dense_3/Softmax:softmax:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџдю
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*^sequential/dense_2/BiasAdd/ReadVariableOp)^sequential/dense_2/MatMul/ReadVariableOp*^sequential/dense_3/BiasAdd/ReadVariableOp)^sequential/dense_3/MatMul/ReadVariableOpN^sequential/dense_features/jenis_hewan_indicator/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2V
)sequential/dense_2/BiasAdd/ReadVariableOp)sequential/dense_2/BiasAdd/ReadVariableOp2T
(sequential/dense_2/MatMul/ReadVariableOp(sequential/dense_2/MatMul/ReadVariableOp2V
)sequential/dense_3/BiasAdd/ReadVariableOp)sequential/dense_3/BiasAdd/ReadVariableOp2T
(sequential/dense_3/MatMul/ReadVariableOp(sequential/dense_3/MatMul/ReadVariableOp2
Msequential/dense_features/jenis_hewan_indicator/None_Lookup/LookupTableFindV2Msequential/dense_features/jenis_hewan_indicator/None_Lookup/LookupTableFindV2:P L
#
_output_shapes
:џџџџџџџџџ
%
_user_specified_namejenis_hewan:MI
#
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
latitude:NJ
#
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	longitude:

_output_shapes
: 
р
ј
G__inference_sequential_layer_call_and_return_conditional_losses_6162809

inputs
inputs_1
inputs_2
dense_features_6162735
dense_features_6162737	 
dense_6162752:	
dense_6162754:	#
dense_1_6162769:

dense_1_6162771:	#
dense_2_6162786:

dense_2_6162788:	#
dense_3_6162803:
д
dense_3_6162805:	д
identityЂdense/StatefulPartitionedCallЂdense_1/StatefulPartitionedCallЂdense_2/StatefulPartitionedCallЂdense_3/StatefulPartitionedCallЂ&dense_features/StatefulPartitionedCall
&dense_features/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2dense_features_6162735dense_features_6162737*
Tin	
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_dense_features_layer_call_and_return_conditional_losses_6162734
dense/StatefulPartitionedCallStatefulPartitionedCall/dense_features/StatefulPartitionedCall:output:0dense_6162752dense_6162754*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_6162751
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_6162769dense_1_6162771*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_6162768
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_6162786dense_2_6162788*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_6162785
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_6162803dense_3_6162805*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџд*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_6162802x
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџдѕ
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall'^dense_features/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2P
&dense_features/StatefulPartitionedCall&dense_features/StatefulPartitionedCall:K G
#
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:KG
#
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:KG
#
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:

_output_shapes
: 
С?
ъ
K__inference_dense_features_layer_call_and_return_conditional_losses_6163448
features_jenis_hewan
features_latitude
features_longitudeD
@jenis_hewan_indicator_none_lookup_lookuptablefindv2_table_handleE
Ajenis_hewan_indicator_none_lookup_lookuptablefindv2_default_value	
identityЂ3jenis_hewan_indicator/None_Lookup/LookupTableFindV2o
$jenis_hewan_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЅ
 jenis_hewan_indicator/ExpandDims
ExpandDimsfeatures_jenis_hewan-jenis_hewan_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:џџџџџџџџџu
4jenis_hewan_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ж
.jenis_hewan_indicator/to_sparse_input/NotEqualNotEqual)jenis_hewan_indicator/ExpandDims:output:0=jenis_hewan_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
-jenis_hewan_indicator/to_sparse_input/indicesWhere2jenis_hewan_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:џџџџџџџџџо
,jenis_hewan_indicator/to_sparse_input/valuesGatherNd)jenis_hewan_indicator/ExpandDims:output:05jenis_hewan_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:џџџџџџџџџ
1jenis_hewan_indicator/to_sparse_input/dense_shapeShape)jenis_hewan_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	Р
3jenis_hewan_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2@jenis_hewan_indicator_none_lookup_lookuptablefindv2_table_handle5jenis_hewan_indicator/to_sparse_input/values:output:0Ajenis_hewan_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:џџџџџџџџџ|
1jenis_hewan_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
џџџџџџџџџу
#jenis_hewan_indicator/SparseToDenseSparseToDense5jenis_hewan_indicator/to_sparse_input/indices:index:0:jenis_hewan_indicator/to_sparse_input/dense_shape:output:0<jenis_hewan_indicator/None_Lookup/LookupTableFindV2:values:0:jenis_hewan_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:џџџџџџџџџh
#jenis_hewan_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?j
%jenis_hewan_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    e
#jenis_hewan_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :
jenis_hewan_indicator/one_hotOneHot+jenis_hewan_indicator/SparseToDense:dense:0,jenis_hewan_indicator/one_hot/depth:output:0,jenis_hewan_indicator/one_hot/Const:output:0.jenis_hewan_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ~
+jenis_hewan_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
ўџџџџџџџџА
jenis_hewan_indicator/SumSum&jenis_hewan_indicator/one_hot:output:04jenis_hewan_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:џџџџџџџџџm
jenis_hewan_indicator/ShapeShape"jenis_hewan_indicator/Sum:output:0*
T0*
_output_shapes
:s
)jenis_hewan_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+jenis_hewan_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+jenis_hewan_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:П
#jenis_hewan_indicator/strided_sliceStridedSlice$jenis_hewan_indicator/Shape:output:02jenis_hewan_indicator/strided_slice/stack:output:04jenis_hewan_indicator/strided_slice/stack_1:output:04jenis_hewan_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%jenis_hewan_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :З
#jenis_hewan_indicator/Reshape/shapePack,jenis_hewan_indicator/strided_slice:output:0.jenis_hewan_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:Ќ
jenis_hewan_indicator/ReshapeReshape"jenis_hewan_indicator/Sum:output:0,jenis_hewan_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџb
latitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
latitude/ExpandDims
ExpandDimsfeatures_latitude latitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:џџџџџџџџџZ
latitude/ShapeShapelatitude/ExpandDims:output:0*
T0*
_output_shapes
:f
latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
latitude/strided_sliceStridedSlicelatitude/Shape:output:0%latitude/strided_slice/stack:output:0'latitude/strided_slice/stack_1:output:0'latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
latitude/Reshape/shapePacklatitude/strided_slice:output:0!latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
latitude/ReshapeReshapelatitude/ExpandDims:output:0latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџc
longitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
longitude/ExpandDims
ExpandDimsfeatures_longitude!longitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:џџџџџџџџџ\
longitude/ShapeShapelongitude/ExpandDims:output:0*
T0*
_output_shapes
:g
longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
longitude/strided_sliceStridedSlicelongitude/Shape:output:0&longitude/strided_slice/stack:output:0(longitude/strided_slice/stack_1:output:0(longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
longitude/Reshape/shapePack longitude/strided_slice:output:0"longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
longitude/ReshapeReshapelongitude/ExpandDims:output:0 longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџV
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџТ
concatConcatV2&jenis_hewan_indicator/Reshape:output:0latitude/Reshape:output:0longitude/Reshape:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:џџџџџџџџџ^
IdentityIdentityconcat:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ|
NoOpNoOp4^jenis_hewan_indicator/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : 2j
3jenis_hewan_indicator/None_Lookup/LookupTableFindV23jenis_hewan_indicator/None_Lookup/LookupTableFindV2:Y U
#
_output_shapes
:џџџџџџџџџ
.
_user_specified_namefeatures_jenis_hewan:VR
#
_output_shapes
:џџџџџџџџџ
+
_user_specified_namefeatures_latitude:WS
#
_output_shapes
:џџџџџџџџџ
,
_user_specified_namefeatures_longitude:

_output_shapes
: 
Щ

)__inference_dense_1_layer_call_fn_6163531

inputs
unknown:

	unknown_0:	
identityЂStatefulPartitionedCallк
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_6162768p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
љ
ѕ
 __inference__initializer_61635956
2table_init3954667_lookuptableimportv2_table_handle.
*table_init3954667_lookuptableimportv2_keys0
,table_init3954667_lookuptableimportv2_values	
identityЂ%table_init3954667/LookupTableImportV2ї
%table_init3954667/LookupTableImportV2LookupTableImportV22table_init3954667_lookuptableimportv2_table_handle*table_init3954667_lookuptableimportv2_keys,table_init3954667_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: n
NoOpNoOp&^table_init3954667/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2N
%table_init3954667/LookupTableImportV2%table_init3954667/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
Ї

ј
D__inference_dense_1_layer_call_and_return_conditional_losses_6163542

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs


Т
0__inference_dense_features_layer_call_fn_6163383
features_jenis_hewan
features_latitude
features_longitude
unknown
	unknown_0	
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallfeatures_jenis_hewanfeatures_latitudefeatures_longitudeunknown	unknown_0*
Tin	
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_dense_features_layer_call_and_return_conditional_losses_6162734o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
#
_output_shapes
:џџџџџџџџџ
.
_user_specified_namefeatures_jenis_hewan:VR
#
_output_shapes
:џџџџџџџџџ
+
_user_specified_namefeatures_latitude:WS
#
_output_shapes
:џџџџџџџџџ
,
_user_specified_namefeatures_longitude:

_output_shapes
: 


Т
0__inference_dense_features_layer_call_fn_6163394
features_jenis_hewan
features_latitude
features_longitude
unknown
	unknown_0	
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallfeatures_jenis_hewanfeatures_latitudefeatures_longitudeunknown	unknown_0*
Tin	
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_dense_features_layer_call_and_return_conditional_losses_6162942o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
#
_output_shapes
:џџџџџџџџџ
.
_user_specified_namefeatures_jenis_hewan:VR
#
_output_shapes
:џџџџџџџџџ
+
_user_specified_namefeatures_latitude:WS
#
_output_shapes
:џџџџџџџџџ
,
_user_specified_namefeatures_longitude:

_output_shapes
: 
ь>
Я
K__inference_dense_features_layer_call_and_return_conditional_losses_6162734
features

features_1

features_2D
@jenis_hewan_indicator_none_lookup_lookuptablefindv2_table_handleE
Ajenis_hewan_indicator_none_lookup_lookuptablefindv2_default_value	
identityЂ3jenis_hewan_indicator/None_Lookup/LookupTableFindV2o
$jenis_hewan_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
 jenis_hewan_indicator/ExpandDims
ExpandDimsfeatures-jenis_hewan_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:џџџџџџџџџu
4jenis_hewan_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ж
.jenis_hewan_indicator/to_sparse_input/NotEqualNotEqual)jenis_hewan_indicator/ExpandDims:output:0=jenis_hewan_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
-jenis_hewan_indicator/to_sparse_input/indicesWhere2jenis_hewan_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:џџџџџџџџџо
,jenis_hewan_indicator/to_sparse_input/valuesGatherNd)jenis_hewan_indicator/ExpandDims:output:05jenis_hewan_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:џџџџџџџџџ
1jenis_hewan_indicator/to_sparse_input/dense_shapeShape)jenis_hewan_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	Р
3jenis_hewan_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2@jenis_hewan_indicator_none_lookup_lookuptablefindv2_table_handle5jenis_hewan_indicator/to_sparse_input/values:output:0Ajenis_hewan_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:џџџџџџџџџ|
1jenis_hewan_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
џџџџџџџџџу
#jenis_hewan_indicator/SparseToDenseSparseToDense5jenis_hewan_indicator/to_sparse_input/indices:index:0:jenis_hewan_indicator/to_sparse_input/dense_shape:output:0<jenis_hewan_indicator/None_Lookup/LookupTableFindV2:values:0:jenis_hewan_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:џџџџџџџџџh
#jenis_hewan_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?j
%jenis_hewan_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    e
#jenis_hewan_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :
jenis_hewan_indicator/one_hotOneHot+jenis_hewan_indicator/SparseToDense:dense:0,jenis_hewan_indicator/one_hot/depth:output:0,jenis_hewan_indicator/one_hot/Const:output:0.jenis_hewan_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ~
+jenis_hewan_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
ўџџџџџџџџА
jenis_hewan_indicator/SumSum&jenis_hewan_indicator/one_hot:output:04jenis_hewan_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:џџџџџџџџџm
jenis_hewan_indicator/ShapeShape"jenis_hewan_indicator/Sum:output:0*
T0*
_output_shapes
:s
)jenis_hewan_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+jenis_hewan_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+jenis_hewan_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:П
#jenis_hewan_indicator/strided_sliceStridedSlice$jenis_hewan_indicator/Shape:output:02jenis_hewan_indicator/strided_slice/stack:output:04jenis_hewan_indicator/strided_slice/stack_1:output:04jenis_hewan_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%jenis_hewan_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :З
#jenis_hewan_indicator/Reshape/shapePack,jenis_hewan_indicator/strided_slice:output:0.jenis_hewan_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:Ќ
jenis_hewan_indicator/ReshapeReshape"jenis_hewan_indicator/Sum:output:0,jenis_hewan_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџb
latitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
latitude/ExpandDims
ExpandDims
features_1 latitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:џџџџџџџџџZ
latitude/ShapeShapelatitude/ExpandDims:output:0*
T0*
_output_shapes
:f
latitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
latitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
latitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
latitude/strided_sliceStridedSlicelatitude/Shape:output:0%latitude/strided_slice/stack:output:0'latitude/strided_slice/stack_1:output:0'latitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
latitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
latitude/Reshape/shapePacklatitude/strided_slice:output:0!latitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
latitude/ReshapeReshapelatitude/ExpandDims:output:0latitude/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџc
longitude/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
longitude/ExpandDims
ExpandDims
features_2!longitude/ExpandDims/dim:output:0*
T0*'
_output_shapes
:џџџџџџџџџ\
longitude/ShapeShapelongitude/ExpandDims:output:0*
T0*
_output_shapes
:g
longitude/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
longitude/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
longitude/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
longitude/strided_sliceStridedSlicelongitude/Shape:output:0&longitude/strided_slice/stack:output:0(longitude/strided_slice/stack_1:output:0(longitude/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
longitude/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
longitude/Reshape/shapePack longitude/strided_slice:output:0"longitude/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:
longitude/ReshapeReshapelongitude/ExpandDims:output:0 longitude/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџV
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџТ
concatConcatV2&jenis_hewan_indicator/Reshape:output:0latitude/Reshape:output:0longitude/Reshape:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:џџџџџџџџџ^
IdentityIdentityconcat:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ|
NoOpNoOp4^jenis_hewan_indicator/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : 2j
3jenis_hewan_indicator/None_Lookup/LookupTableFindV23jenis_hewan_indicator/None_Lookup/LookupTableFindV2:M I
#
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
features:MI
#
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
features:MI
#
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
features:

_output_shapes
: 
і
ў
G__inference_sequential_layer_call_and_return_conditional_losses_6163092
jenis_hewan
latitude
	longitude
dense_features_6163066
dense_features_6163068	 
dense_6163071:	
dense_6163073:	#
dense_1_6163076:

dense_1_6163078:	#
dense_2_6163081:

dense_2_6163083:	#
dense_3_6163086:
д
dense_3_6163088:	д
identityЂdense/StatefulPartitionedCallЂdense_1/StatefulPartitionedCallЂdense_2/StatefulPartitionedCallЂdense_3/StatefulPartitionedCallЂ&dense_features/StatefulPartitionedCallЃ
&dense_features/StatefulPartitionedCallStatefulPartitionedCalljenis_hewanlatitude	longitudedense_features_6163066dense_features_6163068*
Tin	
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_dense_features_layer_call_and_return_conditional_losses_6162734
dense/StatefulPartitionedCallStatefulPartitionedCall/dense_features/StatefulPartitionedCall:output:0dense_6163071dense_6163073*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_6162751
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_6163076dense_1_6163078*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_6162768
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_6163081dense_2_6163083*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_6162785
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_6163086dense_3_6163088*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџд*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_6162802x
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџдѕ
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall'^dense_features/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2P
&dense_features/StatefulPartitionedCall&dense_features/StatefulPartitionedCall:P L
#
_output_shapes
:џџџџџџџџџ
%
_user_specified_namejenis_hewan:MI
#
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
latitude:NJ
#
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	longitude:

_output_shapes
: 
§B

 __inference__traced_save_6163720
file_prefix6
2savev2_sequential_dense_kernel_read_readvariableop4
0savev2_sequential_dense_bias_read_readvariableop8
4savev2_sequential_dense_1_kernel_read_readvariableop6
2savev2_sequential_dense_1_bias_read_readvariableop8
4savev2_sequential_dense_2_kernel_read_readvariableop6
2savev2_sequential_dense_2_bias_read_readvariableop8
4savev2_sequential_dense_3_kernel_read_readvariableop6
2savev2_sequential_dense_3_bias_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableop=
9savev2_adam_m_sequential_dense_kernel_read_readvariableop=
9savev2_adam_v_sequential_dense_kernel_read_readvariableop;
7savev2_adam_m_sequential_dense_bias_read_readvariableop;
7savev2_adam_v_sequential_dense_bias_read_readvariableop?
;savev2_adam_m_sequential_dense_1_kernel_read_readvariableop?
;savev2_adam_v_sequential_dense_1_kernel_read_readvariableop=
9savev2_adam_m_sequential_dense_1_bias_read_readvariableop=
9savev2_adam_v_sequential_dense_1_bias_read_readvariableop?
;savev2_adam_m_sequential_dense_2_kernel_read_readvariableop?
;savev2_adam_v_sequential_dense_2_kernel_read_readvariableop=
9savev2_adam_m_sequential_dense_2_bias_read_readvariableop=
9savev2_adam_v_sequential_dense_2_bias_read_readvariableop?
;savev2_adam_m_sequential_dense_3_kernel_read_readvariableop?
;savev2_adam_v_sequential_dense_3_kernel_read_readvariableop=
9savev2_adam_m_sequential_dense_3_bias_read_readvariableop=
9savev2_adam_v_sequential_dense_3_bias_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const_3

identity_1ЂMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: И
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*с
valueзBдB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЋ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B А
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:02savev2_sequential_dense_kernel_read_readvariableop0savev2_sequential_dense_bias_read_readvariableop4savev2_sequential_dense_1_kernel_read_readvariableop2savev2_sequential_dense_1_bias_read_readvariableop4savev2_sequential_dense_2_kernel_read_readvariableop2savev2_sequential_dense_2_bias_read_readvariableop4savev2_sequential_dense_3_kernel_read_readvariableop2savev2_sequential_dense_3_bias_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableop9savev2_adam_m_sequential_dense_kernel_read_readvariableop9savev2_adam_v_sequential_dense_kernel_read_readvariableop7savev2_adam_m_sequential_dense_bias_read_readvariableop7savev2_adam_v_sequential_dense_bias_read_readvariableop;savev2_adam_m_sequential_dense_1_kernel_read_readvariableop;savev2_adam_v_sequential_dense_1_kernel_read_readvariableop9savev2_adam_m_sequential_dense_1_bias_read_readvariableop9savev2_adam_v_sequential_dense_1_bias_read_readvariableop;savev2_adam_m_sequential_dense_2_kernel_read_readvariableop;savev2_adam_v_sequential_dense_2_kernel_read_readvariableop9savev2_adam_m_sequential_dense_2_bias_read_readvariableop9savev2_adam_v_sequential_dense_2_bias_read_readvariableop;savev2_adam_m_sequential_dense_3_kernel_read_readvariableop;savev2_adam_v_sequential_dense_3_kernel_read_readvariableop9savev2_adam_m_sequential_dense_3_bias_read_readvariableop9savev2_adam_v_sequential_dense_3_bias_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const_3"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *-
dtypes#
!2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Г
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*
_input_shapesє
ё: :	::
::
::
д:д: : :	:	:::
:
:::
:
:::
д:
д:д:д: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::&"
 
_output_shapes
:
д:!

_output_shapes	
:д:	

_output_shapes
: :


_output_shapes
: :%!

_output_shapes
:	:%!

_output_shapes
:	:!

_output_shapes	
::!

_output_shapes	
::&"
 
_output_shapes
:
:&"
 
_output_shapes
:
:!

_output_shapes	
::!

_output_shapes	
::&"
 
_output_shapes
:
:&"
 
_output_shapes
:
:!

_output_shapes	
::!

_output_shapes	
::&"
 
_output_shapes
:
д:&"
 
_output_shapes
:
д:!

_output_shapes	
:д:!

_output_shapes	
:д:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ќ

ј
D__inference_dense_3_layer_call_and_return_conditional_losses_6162802

inputs2
matmul_readvariableop_resource:
д.
biasadd_readvariableop_resource:	д
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
д*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџдs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:д*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџдW
SoftmaxSoftmaxBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџдa
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџдw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
г
<
__inference__creator_6163587
identityЂ
hash_tableo

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name	3954668*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
Ё

ѕ
B__inference_dense_layer_call_and_return_conditional_losses_6162751

inputs1
matmul_readvariableop_resource:	.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Щ

)__inference_dense_2_layer_call_fn_6163551

inputs
unknown:

	unknown_0:	
identityЂStatefulPartitionedCallк
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_6162785p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs"
L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ј
serving_default
?
jenis_hewan0
serving_default_jenis_hewan:0џџџџџџџџџ
9
latitude-
serving_default_latitude:0џџџџџџџџџ
;
	longitude.
serving_default_longitude:0џџџџџџџџџ=
output_11
StatefulPartitionedCall:0џџџџџџџџџдtensorflow/serving/predict:Ч
Ї
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
_build_input_shape

signatures"
_tf_keras_sequential
Ы
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_feature_columns

_resources"
_tf_keras_layer
Л
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
Л
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses

&kernel
'bias"
_tf_keras_layer
Л
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses

.kernel
/bias"
_tf_keras_layer
Л
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses

6kernel
7bias"
_tf_keras_layer
X
0
1
&2
'3
.4
/5
66
77"
trackable_list_wrapper
X
0
1
&2
'3
.4
/5
66
77"
trackable_list_wrapper
 "
trackable_list_wrapper
Ъ
8non_trainable_variables

9layers
:metrics
;layer_regularization_losses
<layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
х
=trace_0
>trace_1
?trace_2
@trace_32њ
,__inference_sequential_layer_call_fn_6162832
,__inference_sequential_layer_call_fn_6163181
,__inference_sequential_layer_call_fn_6163208
,__inference_sequential_layer_call_fn_6163061П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z=trace_0z>trace_1z?trace_2z@trace_3
б
Atrace_0
Btrace_1
Ctrace_2
Dtrace_32ц
G__inference_sequential_layer_call_and_return_conditional_losses_6163290
G__inference_sequential_layer_call_and_return_conditional_losses_6163372
G__inference_sequential_layer_call_and_return_conditional_losses_6163092
G__inference_sequential_layer_call_and_return_conditional_losses_6163123П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zAtrace_0zBtrace_1zCtrace_2zDtrace_3

E	capture_1Bу
"__inference__wrapped_model_6162669jenis_hewanlatitude	longitude"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zE	capture_1

F
_variables
G_iterations
H_learning_rate
I_index_dict
J
_momentums
K_velocities
L_update_step_xla"
experimentalOptimizer
 "
trackable_dict_wrapper
,
Mserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ё
Strace_0
Ttrace_12К
0__inference_dense_features_layer_call_fn_6163383
0__inference_dense_features_layer_call_fn_6163394г
ЪВЦ
FullArgSpecE
args=:
jself

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zStrace_0zTtrace_1
Ї
Utrace_0
Vtrace_12№
K__inference_dense_features_layer_call_and_return_conditional_losses_6163448
K__inference_dense_features_layer_call_and_return_conditional_losses_6163502г
ЪВЦ
FullArgSpecE
args=:
jself

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zUtrace_0zVtrace_1
 "
trackable_list_wrapper
/
Wjenis_hewan"
_generic_user_object
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ы
]trace_02Ю
'__inference_dense_layer_call_fn_6163511Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z]trace_0

^trace_02щ
B__inference_dense_layer_call_and_return_conditional_losses_6163522Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z^trace_0
*:(	2sequential/dense/kernel
$:"2sequential/dense/bias
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
э
dtrace_02а
)__inference_dense_1_layer_call_fn_6163531Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zdtrace_0

etrace_02ы
D__inference_dense_1_layer_call_and_return_conditional_losses_6163542Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zetrace_0
-:+
2sequential/dense_1/kernel
&:$2sequential/dense_1/bias
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
э
ktrace_02а
)__inference_dense_2_layer_call_fn_6163551Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zktrace_0

ltrace_02ы
D__inference_dense_2_layer_call_and_return_conditional_losses_6163562Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zltrace_0
-:+
2sequential/dense_2/kernel
&:$2sequential/dense_2/bias
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
­
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
э
rtrace_02а
)__inference_dense_3_layer_call_fn_6163571Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zrtrace_0

strace_02ы
D__inference_dense_3_layer_call_and_return_conditional_losses_6163582Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zstrace_0
-:+
д2sequential/dense_3/kernel
&:$д2sequential/dense_3/bias
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
.
t0
u1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
Е
E	capture_1B
,__inference_sequential_layer_call_fn_6162832jenis_hewanlatitude	longitude"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zE	capture_1
Ъ
E	capture_1BЉ
,__inference_sequential_layer_call_fn_6163181inputs_jenis_hewaninputs_latitudeinputs_longitude"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zE	capture_1
Ъ
E	capture_1BЉ
,__inference_sequential_layer_call_fn_6163208inputs_jenis_hewaninputs_latitudeinputs_longitude"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zE	capture_1
Е
E	capture_1B
,__inference_sequential_layer_call_fn_6163061jenis_hewanlatitude	longitude"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zE	capture_1
х
E	capture_1BФ
G__inference_sequential_layer_call_and_return_conditional_losses_6163290inputs_jenis_hewaninputs_latitudeinputs_longitude"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zE	capture_1
х
E	capture_1BФ
G__inference_sequential_layer_call_and_return_conditional_losses_6163372inputs_jenis_hewaninputs_latitudeinputs_longitude"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zE	capture_1
а
E	capture_1BЏ
G__inference_sequential_layer_call_and_return_conditional_losses_6163092jenis_hewanlatitude	longitude"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zE	capture_1
а
E	capture_1BЏ
G__inference_sequential_layer_call_and_return_conditional_losses_6163123jenis_hewanlatitude	longitude"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zE	capture_1
!J	
Const_2jtf.TrackableConstant
Є
G0
v1
w2
x3
y4
z5
{6
|7
}8
~9
10
11
12
13
14
15
16"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
[
v0
x1
z2
|3
~4
5
6
7"
trackable_list_wrapper
[
w0
y1
{2
}3
4
5
6
7"
trackable_list_wrapper
П2МЙ
ЎВЊ
FullArgSpec2
args*'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0

E	capture_1Bр
%__inference_signature_wrapper_6163154jenis_hewanlatitude	longitude"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zE	capture_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ш
E	capture_1BЧ
0__inference_dense_features_layer_call_fn_6163383features_jenis_hewanfeatures_latitudefeatures_longitude"г
ЪВЦ
FullArgSpecE
args=:
jself

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zE	capture_1
ш
E	capture_1BЧ
0__inference_dense_features_layer_call_fn_6163394features_jenis_hewanfeatures_latitudefeatures_longitude"г
ЪВЦ
FullArgSpecE
args=:
jself

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zE	capture_1

E	capture_1Bт
K__inference_dense_features_layer_call_and_return_conditional_losses_6163448features_jenis_hewanfeatures_latitudefeatures_longitude"г
ЪВЦ
FullArgSpecE
args=:
jself

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zE	capture_1

E	capture_1Bт
K__inference_dense_features_layer_call_and_return_conditional_losses_6163502features_jenis_hewanfeatures_latitudefeatures_longitude"г
ЪВЦ
FullArgSpecE
args=:
jself

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zE	capture_1
7
jenis_hewan_lookup"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
лBи
'__inference_dense_layer_call_fn_6163511inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
іBѓ
B__inference_dense_layer_call_and_return_conditional_losses_6163522inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
нBк
)__inference_dense_1_layer_call_fn_6163531inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
јBѕ
D__inference_dense_1_layer_call_and_return_conditional_losses_6163542inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
нBк
)__inference_dense_2_layer_call_fn_6163551inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
јBѕ
D__inference_dense_2_layer_call_and_return_conditional_losses_6163562inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
нBк
)__inference_dense_3_layer_call_fn_6163571inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
јBѕ
D__inference_dense_3_layer_call_and_return_conditional_losses_6163582inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
R
	variables
	keras_api

total

count"
_tf_keras_metric
c
	variables
	keras_api

total

count

_fn_kwargs"
_tf_keras_metric
/:-	2Adam/m/sequential/dense/kernel
/:-	2Adam/v/sequential/dense/kernel
):'2Adam/m/sequential/dense/bias
):'2Adam/v/sequential/dense/bias
2:0
2 Adam/m/sequential/dense_1/kernel
2:0
2 Adam/v/sequential/dense_1/kernel
+:)2Adam/m/sequential/dense_1/bias
+:)2Adam/v/sequential/dense_1/bias
2:0
2 Adam/m/sequential/dense_2/kernel
2:0
2 Adam/v/sequential/dense_2/kernel
+:)2Adam/m/sequential/dense_2/bias
+:)2Adam/v/sequential/dense_2/bias
2:0
д2 Adam/m/sequential/dense_3/kernel
2:0
д2 Adam/v/sequential/dense_3/kernel
+:)д2Adam/m/sequential/dense_3/bias
+:)д2Adam/v/sequential/dense_3/bias
j
_initializer
_create_resource
_initialize
_destroy_resourceR jtf.StaticHashTable
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
"
_generic_user_object
Я
trace_02А
__inference__creator_6163587
В
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *Ђ ztrace_0
г
trace_02Д
 __inference__initializer_6163595
В
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *Ђ ztrace_0
б
trace_02В
__inference__destroyer_6163600
В
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *Ђ ztrace_0
ГBА
__inference__creator_6163587"
В
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *Ђ 
ї
	capture_1
	capture_2BД
 __inference__initializer_6163595"
В
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *Ђ z	capture_1z	capture_2
ЕBВ
__inference__destroyer_6163600"
В
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *Ђ 
J
Constjtf.TrackableConstant
!J	
Const_1jtf.TrackableConstantA
__inference__creator_6163587!Ђ

Ђ 
Њ "
unknown C
__inference__destroyer_6163600!Ђ

Ђ 
Њ "
unknown M
 __inference__initializer_6163595)Ђ

Ђ 
Њ "
unknown 
"__inference__wrapped_model_6162669щE&'./67ЃЂ
Ђ
Њ
0
jenis_hewan!
jenis_hewanџџџџџџџџџ
*
latitude
latitudeџџџџџџџџџ
,
	longitude
	longitudeџџџџџџџџџ
Њ "4Њ1
/
output_1# 
output_1џџџџџџџџџд­
D__inference_dense_1_layer_call_and_return_conditional_losses_6163542e&'0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "-Ђ*
# 
tensor_0џџџџџџџџџ
 
)__inference_dense_1_layer_call_fn_6163531Z&'0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ ""
unknownџџџџџџџџџ­
D__inference_dense_2_layer_call_and_return_conditional_losses_6163562e./0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "-Ђ*
# 
tensor_0џџџџџџџџџ
 
)__inference_dense_2_layer_call_fn_6163551Z./0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ ""
unknownџџџџџџџџџ­
D__inference_dense_3_layer_call_and_return_conditional_losses_6163582e670Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "-Ђ*
# 
tensor_0џџџџџџџџџд
 
)__inference_dense_3_layer_call_fn_6163571Z670Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ ""
unknownџџџџџџџџџдЬ
K__inference_dense_features_layer_call_and_return_conditional_losses_6163448ќEЦЂТ
КЂЖ
ЋЊЇ
9
jenis_hewan*'
features_jenis_hewanџџџџџџџџџ
3
latitude'$
features_latitudeџџџџџџџџџ
5
	longitude(%
features_longitudeџџџџџџџџџ

 
p 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 Ь
K__inference_dense_features_layer_call_and_return_conditional_losses_6163502ќEЦЂТ
КЂЖ
ЋЊЇ
9
jenis_hewan*'
features_jenis_hewanџџџџџџџџџ
3
latitude'$
features_latitudeџџџџџџџџџ
5
	longitude(%
features_longitudeџџџџџџџџџ

 
p
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 І
0__inference_dense_features_layer_call_fn_6163383ёEЦЂТ
КЂЖ
ЋЊЇ
9
jenis_hewan*'
features_jenis_hewanџџџџџџџџџ
3
latitude'$
features_latitudeџџџџџџџџџ
5
	longitude(%
features_longitudeџџџџџџџџџ

 
p 
Њ "!
unknownџџџџџџџџџІ
0__inference_dense_features_layer_call_fn_6163394ёEЦЂТ
КЂЖ
ЋЊЇ
9
jenis_hewan*'
features_jenis_hewanџџџџџџџџџ
3
latitude'$
features_latitudeџџџџџџџџџ
5
	longitude(%
features_longitudeџџџџџџџџџ

 
p
Њ "!
unknownџџџџџџџџџЊ
B__inference_dense_layer_call_and_return_conditional_losses_6163522d/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "-Ђ*
# 
tensor_0џџџџџџџџџ
 
'__inference_dense_layer_call_fn_6163511Y/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ ""
unknownџџџџџџџџџЖ
G__inference_sequential_layer_call_and_return_conditional_losses_6163092ъE&'./67ЋЂЇ
Ђ
Њ
0
jenis_hewan!
jenis_hewanџџџџџџџџџ
*
latitude
latitudeџџџџџџџџџ
,
	longitude
	longitudeџџџџџџџџџ
p 

 
Њ "-Ђ*
# 
tensor_0џџџџџџџџџд
 Ж
G__inference_sequential_layer_call_and_return_conditional_losses_6163123ъE&'./67ЋЂЇ
Ђ
Њ
0
jenis_hewan!
jenis_hewanџџџџџџџџџ
*
latitude
latitudeџџџџџџџџџ
,
	longitude
	longitudeџџџџџџџџџ
p

 
Њ "-Ђ*
# 
tensor_0џџџџџџџџџд
 Ы
G__inference_sequential_layer_call_and_return_conditional_losses_6163290џE&'./67РЂМ
ДЂА
ЅЊЁ
7
jenis_hewan(%
inputs_jenis_hewanџџџџџџџџџ
1
latitude%"
inputs_latitudeџџџџџџџџџ
3
	longitude&#
inputs_longitudeџџџџџџџџџ
p 

 
Њ "-Ђ*
# 
tensor_0џџџџџџџџџд
 Ы
G__inference_sequential_layer_call_and_return_conditional_losses_6163372џE&'./67РЂМ
ДЂА
ЅЊЁ
7
jenis_hewan(%
inputs_jenis_hewanџџџџџџџџџ
1
latitude%"
inputs_latitudeџџџџџџџџџ
3
	longitude&#
inputs_longitudeџџџџџџџџџ
p

 
Њ "-Ђ*
# 
tensor_0џџџџџџџџџд
 
,__inference_sequential_layer_call_fn_6162832пE&'./67ЋЂЇ
Ђ
Њ
0
jenis_hewan!
jenis_hewanџџџџџџџџџ
*
latitude
latitudeџџџџџџџџџ
,
	longitude
	longitudeџџџџџџџџџ
p 

 
Њ ""
unknownџџџџџџџџџд
,__inference_sequential_layer_call_fn_6163061пE&'./67ЋЂЇ
Ђ
Њ
0
jenis_hewan!
jenis_hewanџџџџџџџџџ
*
latitude
latitudeџџџџџџџџџ
,
	longitude
	longitudeџџџџџџџџџ
p

 
Њ ""
unknownџџџџџџџџџдЅ
,__inference_sequential_layer_call_fn_6163181єE&'./67РЂМ
ДЂА
ЅЊЁ
7
jenis_hewan(%
inputs_jenis_hewanџџџџџџџџџ
1
latitude%"
inputs_latitudeџџџџџџџџџ
3
	longitude&#
inputs_longitudeџџџџџџџџџ
p 

 
Њ ""
unknownџџџџџџџџџдЅ
,__inference_sequential_layer_call_fn_6163208єE&'./67РЂМ
ДЂА
ЅЊЁ
7
jenis_hewan(%
inputs_jenis_hewanџџџџџџџџџ
1
latitude%"
inputs_latitudeџџџџџџџџџ
3
	longitude&#
inputs_longitudeџџџџџџџџџ
p

 
Њ ""
unknownџџџџџџџџџд
%__inference_signature_wrapper_6163154тE&'./67Ђ
Ђ 
Њ
0
jenis_hewan!
jenis_hewanџџџџџџџџџ
*
latitude
latitudeџџџџџџџџџ
,
	longitude
	longitudeџџџџџџџџџ"4Њ1
/
output_1# 
output_1џџџџџџџџџд