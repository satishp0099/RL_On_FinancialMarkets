ʭ
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
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
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.14.02v2.14.0-rc1-21-g4dacf3f368e8׌
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
t
dense_121/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_121/bias
m
"dense_121/bias/Read/ReadVariableOpReadVariableOpdense_121/bias*
_output_shapes
:*
dtype0
|
dense_121/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*!
shared_namedense_121/kernel
u
$dense_121/kernel/Read/ReadVariableOpReadVariableOpdense_121/kernel*
_output_shapes

:@*
dtype0
t
dense_120/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_120/bias
m
"dense_120/bias/Read/ReadVariableOpReadVariableOpdense_120/bias*
_output_shapes
:@*
dtype0
|
dense_120/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*!
shared_namedense_120/kernel
u
$dense_120/kernel/Read/ReadVariableOpReadVariableOpdense_120/kernel*
_output_shapes

:@@*
dtype0
t
dense_119/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_119/bias
m
"dense_119/bias/Read/ReadVariableOpReadVariableOpdense_119/bias*
_output_shapes
:@*
dtype0
|
dense_119/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*!
shared_namedense_119/kernel
u
$dense_119/kernel/Read/ReadVariableOpReadVariableOpdense_119/kernel*
_output_shapes

:@*
dtype0
�
serving_default_dense_119_inputPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_119_inputdense_119/kerneldense_119/biasdense_120/kerneldense_120/biasdense_121/kerneldense_121/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_377679

NoOpNoOp
�+
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�*
value�*B�* B�*
�
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
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

signatures
#_self_saveable_object_factories*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
#_self_saveable_object_factories*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
# _self_saveable_object_factories* 
�
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses

'kernel
(bias
#)_self_saveable_object_factories*
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses
0_random_generator
#1_self_saveable_object_factories* 
�
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses

8kernel
9bias
#:_self_saveable_object_factories*
.
0
1
'2
(3
84
95*
.
0
1
'2
(3
84
95*
* 
�
;non_trainable_variables

<layers
=metrics
>layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

@trace_0
Atrace_1* 

Btrace_0
Ctrace_1* 
* 
O
D
_variables
E_iterations
F_learning_rate
G_update_step_xla*

Hserving_default* 
* 

0
1*

0
1*
* 
�
Inon_trainable_variables

Jlayers
Kmetrics
Llayer_regularization_losses
Mlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Ntrace_0* 

Otrace_0* 
`Z
VARIABLE_VALUEdense_119/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_119/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

Utrace_0
Vtrace_1* 

Wtrace_0
Xtrace_1* 
'
#Y_self_saveable_object_factories* 
* 

'0
(1*

'0
(1*
* 
�
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses*

_trace_0* 

`trace_0* 
`Z
VARIABLE_VALUEdense_120/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_120/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses* 

ftrace_0
gtrace_1* 

htrace_0
itrace_1* 
'
#j_self_saveable_object_factories* 
* 

80
91*

80
91*
* 
�
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses*

ptrace_0* 

qtrace_0* 
`Z
VARIABLE_VALUEdense_121/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_121/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
'
0
1
2
3
4*

r0
s1*
* 
* 
* 
* 
* 
* 

E0*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
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
8
t	variables
u	keras_api
	vtotal
	wcount*
H
x	variables
y	keras_api
	ztotal
	{count
|
_fn_kwargs*

v0
w1*

t	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

z0
{1*

x	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense_119/kerneldense_119/biasdense_120/kerneldense_120/biasdense_121/kerneldense_121/bias	iterationlearning_ratetotal_1count_1totalcountConst*
Tin
2*
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
GPU 2J 8� *(
f#R!
__inference__traced_save_377886
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_119/kerneldense_119/biasdense_120/kerneldense_120/biasdense_121/kerneldense_121/bias	iterationlearning_ratetotal_1count_1totalcount*
Tin
2*
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
GPU 2J 8� *+
f&R$
"__inference__traced_restore_377931��
�
�
I__inference_sequential_42_layer_call_and_return_conditional_losses_377547
dense_119_input"
dense_119_377484:@
dense_119_377486:@"
dense_120_377513:@@
dense_120_377515:@"
dense_121_377541:@
dense_121_377543:
identity��!dense_119/StatefulPartitionedCall�!dense_120/StatefulPartitionedCall�!dense_121/StatefulPartitionedCall�"dropout_80/StatefulPartitionedCall�"dropout_81/StatefulPartitionedCall�
!dense_119/StatefulPartitionedCallStatefulPartitionedCalldense_119_inputdense_119_377484dense_119_377486*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_119_layer_call_and_return_conditional_losses_377483�
"dropout_80/StatefulPartitionedCallStatefulPartitionedCall*dense_119/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_80_layer_call_and_return_conditional_losses_377500�
!dense_120/StatefulPartitionedCallStatefulPartitionedCall+dropout_80/StatefulPartitionedCall:output:0dense_120_377513dense_120_377515*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_120_layer_call_and_return_conditional_losses_377512�
"dropout_81/StatefulPartitionedCallStatefulPartitionedCall*dense_120/StatefulPartitionedCall:output:0#^dropout_80/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_81_layer_call_and_return_conditional_losses_377529�
!dense_121/StatefulPartitionedCallStatefulPartitionedCall+dropout_81/StatefulPartitionedCall:output:0dense_121_377541dense_121_377543*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_121_layer_call_and_return_conditional_losses_377540y
IdentityIdentity*dense_121/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_119/StatefulPartitionedCall"^dense_120/StatefulPartitionedCall"^dense_121/StatefulPartitionedCall#^dropout_80/StatefulPartitionedCall#^dropout_81/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2F
!dense_119/StatefulPartitionedCall!dense_119/StatefulPartitionedCall2F
!dense_120/StatefulPartitionedCall!dense_120/StatefulPartitionedCall2F
!dense_121/StatefulPartitionedCall!dense_121/StatefulPartitionedCall2H
"dropout_80/StatefulPartitionedCall"dropout_80/StatefulPartitionedCall2H
"dropout_81/StatefulPartitionedCall"dropout_81/StatefulPartitionedCall:&"
 
_user_specified_name377543:&"
 
_user_specified_name377541:&"
 
_user_specified_name377515:&"
 
_user_specified_name377513:&"
 
_user_specified_name377486:&"
 
_user_specified_name377484:X T
'
_output_shapes
:���������
)
_user_specified_namedense_119_input
�

e
F__inference_dropout_80_layer_call_and_return_conditional_losses_377500

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������@Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype0*

seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
.__inference_sequential_42_layer_call_fn_377612
dense_119_input
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:@
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_119_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_42_layer_call_and_return_conditional_losses_377578o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name377608:&"
 
_user_specified_name377606:&"
 
_user_specified_name377604:&"
 
_user_specified_name377602:&"
 
_user_specified_name377600:&"
 
_user_specified_name377598:X T
'
_output_shapes
:���������
)
_user_specified_namedense_119_input
�
d
+__inference_dropout_81_layer_call_fn_377751

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_81_layer_call_and_return_conditional_losses_377529o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
G
+__inference_dropout_80_layer_call_fn_377709

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_80_layer_call_and_return_conditional_losses_377559`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
I__inference_sequential_42_layer_call_and_return_conditional_losses_377578
dense_119_input"
dense_119_377550:@
dense_119_377552:@"
dense_120_377561:@@
dense_120_377563:@"
dense_121_377572:@
dense_121_377574:
identity��!dense_119/StatefulPartitionedCall�!dense_120/StatefulPartitionedCall�!dense_121/StatefulPartitionedCall�
!dense_119/StatefulPartitionedCallStatefulPartitionedCalldense_119_inputdense_119_377550dense_119_377552*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_119_layer_call_and_return_conditional_losses_377483�
dropout_80/PartitionedCallPartitionedCall*dense_119/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_80_layer_call_and_return_conditional_losses_377559�
!dense_120/StatefulPartitionedCallStatefulPartitionedCall#dropout_80/PartitionedCall:output:0dense_120_377561dense_120_377563*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_120_layer_call_and_return_conditional_losses_377512�
dropout_81/PartitionedCallPartitionedCall*dense_120/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_81_layer_call_and_return_conditional_losses_377570�
!dense_121/StatefulPartitionedCallStatefulPartitionedCall#dropout_81/PartitionedCall:output:0dense_121_377572dense_121_377574*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_121_layer_call_and_return_conditional_losses_377540y
IdentityIdentity*dense_121/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^dense_119/StatefulPartitionedCall"^dense_120/StatefulPartitionedCall"^dense_121/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2F
!dense_119/StatefulPartitionedCall!dense_119/StatefulPartitionedCall2F
!dense_120/StatefulPartitionedCall!dense_120/StatefulPartitionedCall2F
!dense_121/StatefulPartitionedCall!dense_121/StatefulPartitionedCall:&"
 
_user_specified_name377574:&"
 
_user_specified_name377572:&"
 
_user_specified_name377563:&"
 
_user_specified_name377561:&"
 
_user_specified_name377552:&"
 
_user_specified_name377550:X T
'
_output_shapes
:���������
)
_user_specified_namedense_119_input
�
d
+__inference_dropout_80_layer_call_fn_377704

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_80_layer_call_and_return_conditional_losses_377500o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�	
�
E__inference_dense_121_layer_call_and_return_conditional_losses_377540

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
E__inference_dense_120_layer_call_and_return_conditional_losses_377512

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
*__inference_dense_119_layer_call_fn_377688

inputs
unknown:@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_119_layer_call_and_return_conditional_losses_377483o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name377684:&"
 
_user_specified_name377682:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
d
F__inference_dropout_81_layer_call_and_return_conditional_losses_377570

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
E__inference_dense_119_layer_call_and_return_conditional_losses_377699

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
d
F__inference_dropout_81_layer_call_and_return_conditional_losses_377773

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
E__inference_dense_120_layer_call_and_return_conditional_losses_377746

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�

e
F__inference_dropout_80_layer_call_and_return_conditional_losses_377721

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������@Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype0*

seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
$__inference_signature_wrapper_377679
dense_119_input
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:@
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_119_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_377470o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name377675:&"
 
_user_specified_name377673:&"
 
_user_specified_name377671:&"
 
_user_specified_name377669:&"
 
_user_specified_name377667:&"
 
_user_specified_name377665:X T
'
_output_shapes
:���������
)
_user_specified_namedense_119_input
�:
�
"__inference__traced_restore_377931
file_prefix3
!assignvariableop_dense_119_kernel:@/
!assignvariableop_1_dense_119_bias:@5
#assignvariableop_2_dense_120_kernel:@@/
!assignvariableop_3_dense_120_bias:@5
#assignvariableop_4_dense_121_kernel:@/
!assignvariableop_5_dense_121_bias:&
assignvariableop_6_iteration:	 *
 assignvariableop_7_learning_rate: $
assignvariableop_8_total_1: $
assignvariableop_9_count_1: #
assignvariableop_10_total: #
assignvariableop_11_count: 
identity_13��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*-
value$B"B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*H
_output_shapes6
4:::::::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp!assignvariableop_dense_119_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_119_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_120_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_120_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_121_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_121_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_iterationIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp assignvariableop_7_learning_rateIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_total_1Identity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_count_1Identity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_totalIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_countIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_12Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_13IdentityIdentity_12:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_13Identity_13:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
: : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:%!

_user_specified_namecount:%!

_user_specified_nametotal:'
#
!
_user_specified_name	count_1:'	#
!
_user_specified_name	total_1:-)
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:.*
(
_user_specified_namedense_121/bias:0,
*
_user_specified_namedense_121/kernel:.*
(
_user_specified_namedense_120/bias:0,
*
_user_specified_namedense_120/kernel:.*
(
_user_specified_namedense_119/bias:0,
*
_user_specified_namedense_119/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�

�
.__inference_sequential_42_layer_call_fn_377595
dense_119_input
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:@
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_119_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_42_layer_call_and_return_conditional_losses_377547o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name377591:&"
 
_user_specified_name377589:&"
 
_user_specified_name377587:&"
 
_user_specified_name377585:&"
 
_user_specified_name377583:&"
 
_user_specified_name377581:X T
'
_output_shapes
:���������
)
_user_specified_namedense_119_input
�
G
+__inference_dropout_81_layer_call_fn_377756

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_81_layer_call_and_return_conditional_losses_377570`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�

e
F__inference_dropout_81_layer_call_and_return_conditional_losses_377529

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������@Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype0*

seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
E__inference_dense_119_layer_call_and_return_conditional_losses_377483

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
E__inference_dense_121_layer_call_and_return_conditional_losses_377792

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
*__inference_dense_121_layer_call_fn_377782

inputs
unknown:@
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_121_layer_call_and_return_conditional_losses_377540o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name377778:&"
 
_user_specified_name377776:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
d
F__inference_dropout_80_layer_call_and_return_conditional_losses_377559

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�

e
F__inference_dropout_81_layer_call_and_return_conditional_losses_377768

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������@Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype0*

seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
*__inference_dense_120_layer_call_fn_377735

inputs
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_120_layer_call_and_return_conditional_losses_377512o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name377731:&"
 
_user_specified_name377729:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�&
�
!__inference__wrapped_model_377470
dense_119_inputH
6sequential_42_dense_119_matmul_readvariableop_resource:@E
7sequential_42_dense_119_biasadd_readvariableop_resource:@H
6sequential_42_dense_120_matmul_readvariableop_resource:@@E
7sequential_42_dense_120_biasadd_readvariableop_resource:@H
6sequential_42_dense_121_matmul_readvariableop_resource:@E
7sequential_42_dense_121_biasadd_readvariableop_resource:
identity��.sequential_42/dense_119/BiasAdd/ReadVariableOp�-sequential_42/dense_119/MatMul/ReadVariableOp�.sequential_42/dense_120/BiasAdd/ReadVariableOp�-sequential_42/dense_120/MatMul/ReadVariableOp�.sequential_42/dense_121/BiasAdd/ReadVariableOp�-sequential_42/dense_121/MatMul/ReadVariableOp�
-sequential_42/dense_119/MatMul/ReadVariableOpReadVariableOp6sequential_42_dense_119_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
sequential_42/dense_119/MatMulMatMuldense_119_input5sequential_42/dense_119/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
.sequential_42/dense_119/BiasAdd/ReadVariableOpReadVariableOp7sequential_42_dense_119_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential_42/dense_119/BiasAddBiasAdd(sequential_42/dense_119/MatMul:product:06sequential_42/dense_119/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
sequential_42/dense_119/ReluRelu(sequential_42/dense_119/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
!sequential_42/dropout_80/IdentityIdentity*sequential_42/dense_119/Relu:activations:0*
T0*'
_output_shapes
:���������@�
-sequential_42/dense_120/MatMul/ReadVariableOpReadVariableOp6sequential_42_dense_120_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0�
sequential_42/dense_120/MatMulMatMul*sequential_42/dropout_80/Identity:output:05sequential_42/dense_120/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
.sequential_42/dense_120/BiasAdd/ReadVariableOpReadVariableOp7sequential_42_dense_120_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential_42/dense_120/BiasAddBiasAdd(sequential_42/dense_120/MatMul:product:06sequential_42/dense_120/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
sequential_42/dense_120/ReluRelu(sequential_42/dense_120/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
!sequential_42/dropout_81/IdentityIdentity*sequential_42/dense_120/Relu:activations:0*
T0*'
_output_shapes
:���������@�
-sequential_42/dense_121/MatMul/ReadVariableOpReadVariableOp6sequential_42_dense_121_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
sequential_42/dense_121/MatMulMatMul*sequential_42/dropout_81/Identity:output:05sequential_42/dense_121/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
.sequential_42/dense_121/BiasAdd/ReadVariableOpReadVariableOp7sequential_42_dense_121_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_42/dense_121/BiasAddBiasAdd(sequential_42/dense_121/MatMul:product:06sequential_42/dense_121/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������w
IdentityIdentity(sequential_42/dense_121/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^sequential_42/dense_119/BiasAdd/ReadVariableOp.^sequential_42/dense_119/MatMul/ReadVariableOp/^sequential_42/dense_120/BiasAdd/ReadVariableOp.^sequential_42/dense_120/MatMul/ReadVariableOp/^sequential_42/dense_121/BiasAdd/ReadVariableOp.^sequential_42/dense_121/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : : : : : 2`
.sequential_42/dense_119/BiasAdd/ReadVariableOp.sequential_42/dense_119/BiasAdd/ReadVariableOp2^
-sequential_42/dense_119/MatMul/ReadVariableOp-sequential_42/dense_119/MatMul/ReadVariableOp2`
.sequential_42/dense_120/BiasAdd/ReadVariableOp.sequential_42/dense_120/BiasAdd/ReadVariableOp2^
-sequential_42/dense_120/MatMul/ReadVariableOp-sequential_42/dense_120/MatMul/ReadVariableOp2`
.sequential_42/dense_121/BiasAdd/ReadVariableOp.sequential_42/dense_121/BiasAdd/ReadVariableOp2^
-sequential_42/dense_121/MatMul/ReadVariableOp-sequential_42/dense_121/MatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:X T
'
_output_shapes
:���������
)
_user_specified_namedense_119_input
�c
�

__inference__traced_save_377886
file_prefix9
'read_disablecopyonread_dense_119_kernel:@5
'read_1_disablecopyonread_dense_119_bias:@;
)read_2_disablecopyonread_dense_120_kernel:@@5
'read_3_disablecopyonread_dense_120_bias:@;
)read_4_disablecopyonread_dense_121_kernel:@5
'read_5_disablecopyonread_dense_121_bias:,
"read_6_disablecopyonread_iteration:	 0
&read_7_disablecopyonread_learning_rate: *
 read_8_disablecopyonread_total_1: *
 read_9_disablecopyonread_count_1: )
read_10_disablecopyonread_total: )
read_11_disablecopyonread_count: 
savev2_const
identity_25��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: y
Read/DisableCopyOnReadDisableCopyOnRead'read_disablecopyonread_dense_119_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp'read_disablecopyonread_dense_119_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0i
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@a

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes

:@{
Read_1/DisableCopyOnReadDisableCopyOnRead'read_1_disablecopyonread_dense_119_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp'read_1_disablecopyonread_dense_119_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:@}
Read_2/DisableCopyOnReadDisableCopyOnRead)read_2_disablecopyonread_dense_120_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp)read_2_disablecopyonread_dense_120_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0m

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@c

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes

:@@{
Read_3/DisableCopyOnReadDisableCopyOnRead'read_3_disablecopyonread_dense_120_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp'read_3_disablecopyonread_dense_120_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:@}
Read_4/DisableCopyOnReadDisableCopyOnRead)read_4_disablecopyonread_dense_121_kernel"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp)read_4_disablecopyonread_dense_121_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0m

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@c

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes

:@{
Read_5/DisableCopyOnReadDisableCopyOnRead'read_5_disablecopyonread_dense_121_bias"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp'read_5_disablecopyonread_dense_121_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_6/DisableCopyOnReadDisableCopyOnRead"read_6_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp"read_6_disablecopyonread_iteration^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	f
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0	*
_output_shapes
: z
Read_7/DisableCopyOnReadDisableCopyOnRead&read_7_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp&read_7_disablecopyonread_learning_rate^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_8/DisableCopyOnReadDisableCopyOnRead read_8_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp read_8_disablecopyonread_total_1^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_9/DisableCopyOnReadDisableCopyOnRead read_9_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp read_9_disablecopyonread_count_1^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_10/DisableCopyOnReadDisableCopyOnReadread_10_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOpread_10_disablecopyonread_total^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_11/DisableCopyOnReadDisableCopyOnReadread_11_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOpread_11_disablecopyonread_count^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*-
value$B"B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_24Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_25IdentityIdentity_24:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_25Identity_25:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
: : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=9

_output_shapes
: 

_user_specified_nameConst:%!

_user_specified_namecount:%!

_user_specified_nametotal:'
#
!
_user_specified_name	count_1:'	#
!
_user_specified_name	total_1:-)
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:.*
(
_user_specified_namedense_121/bias:0,
*
_user_specified_namedense_121/kernel:.*
(
_user_specified_namedense_120/bias:0,
*
_user_specified_namedense_120/kernel:.*
(
_user_specified_namedense_119/bias:0,
*
_user_specified_namedense_119/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
d
F__inference_dropout_80_layer_call_and_return_conditional_losses_377726

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
K
dense_119_input8
!serving_default_dense_119_input:0���������=
	dense_1210
StatefulPartitionedCall:0���������tensorflow/serving/predict:ڏ
�
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
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

signatures
#_self_saveable_object_factories"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
#_self_saveable_object_factories"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
# _self_saveable_object_factories"
_tf_keras_layer
�
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses

'kernel
(bias
#)_self_saveable_object_factories"
_tf_keras_layer
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses
0_random_generator
#1_self_saveable_object_factories"
_tf_keras_layer
�
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses

8kernel
9bias
#:_self_saveable_object_factories"
_tf_keras_layer
J
0
1
'2
(3
84
95"
trackable_list_wrapper
J
0
1
'2
(3
84
95"
trackable_list_wrapper
 "
trackable_list_wrapper
�
;non_trainable_variables

<layers
=metrics
>layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
@trace_0
Atrace_12�
.__inference_sequential_42_layer_call_fn_377595
.__inference_sequential_42_layer_call_fn_377612�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z@trace_0zAtrace_1
�
Btrace_0
Ctrace_12�
I__inference_sequential_42_layer_call_and_return_conditional_losses_377547
I__inference_sequential_42_layer_call_and_return_conditional_losses_377578�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zBtrace_0zCtrace_1
�B�
!__inference__wrapped_model_377470dense_119_input"�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
j
D
_variables
E_iterations
F_learning_rate
G_update_step_xla"
experimentalOptimizer
,
Hserving_default"
signature_map
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Inon_trainable_variables

Jlayers
Kmetrics
Llayer_regularization_losses
Mlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Ntrace_02�
*__inference_dense_119_layer_call_fn_377688�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zNtrace_0
�
Otrace_02�
E__inference_dense_119_layer_call_and_return_conditional_losses_377699�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zOtrace_0
": @2dense_119/kernel
:@2dense_119/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Utrace_0
Vtrace_12�
+__inference_dropout_80_layer_call_fn_377704
+__inference_dropout_80_layer_call_fn_377709�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zUtrace_0zVtrace_1
�
Wtrace_0
Xtrace_12�
F__inference_dropout_80_layer_call_and_return_conditional_losses_377721
F__inference_dropout_80_layer_call_and_return_conditional_losses_377726�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zWtrace_0zXtrace_1
C
#Y_self_saveable_object_factories"
_generic_user_object
 "
trackable_dict_wrapper
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
�
_trace_02�
*__inference_dense_120_layer_call_fn_377735�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z_trace_0
�
`trace_02�
E__inference_dense_120_layer_call_and_return_conditional_losses_377746�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z`trace_0
": @@2dense_120/kernel
:@2dense_120/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
�
ftrace_0
gtrace_12�
+__inference_dropout_81_layer_call_fn_377751
+__inference_dropout_81_layer_call_fn_377756�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zftrace_0zgtrace_1
�
htrace_0
itrace_12�
F__inference_dropout_81_layer_call_and_return_conditional_losses_377768
F__inference_dropout_81_layer_call_and_return_conditional_losses_377773�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zhtrace_0zitrace_1
C
#j_self_saveable_object_factories"
_generic_user_object
 "
trackable_dict_wrapper
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
�
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
�
ptrace_02�
*__inference_dense_121_layer_call_fn_377782�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zptrace_0
�
qtrace_02�
E__inference_dense_121_layer_call_and_return_conditional_losses_377792�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zqtrace_0
": @2dense_121/kernel
:2dense_121/bias
 "
trackable_dict_wrapper
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
r0
s1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
.__inference_sequential_42_layer_call_fn_377595dense_119_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
.__inference_sequential_42_layer_call_fn_377612dense_119_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_sequential_42_layer_call_and_return_conditional_losses_377547dense_119_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_sequential_42_layer_call_and_return_conditional_losses_377578dense_119_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
'
E0"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
�2��
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�B�
$__inference_signature_wrapper_377679dense_119_input"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 $

kwonlyargs�
jdense_119_input
kwonlydefaults
 
annotations� *
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
�B�
*__inference_dense_119_layer_call_fn_377688inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dense_119_layer_call_and_return_conditional_losses_377699inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
+__inference_dropout_80_layer_call_fn_377704inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
+__inference_dropout_80_layer_call_fn_377709inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_dropout_80_layer_call_and_return_conditional_losses_377721inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_dropout_80_layer_call_and_return_conditional_losses_377726inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_dict_wrapper
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
�B�
*__inference_dense_120_layer_call_fn_377735inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dense_120_layer_call_and_return_conditional_losses_377746inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
+__inference_dropout_81_layer_call_fn_377751inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
+__inference_dropout_81_layer_call_fn_377756inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_dropout_81_layer_call_and_return_conditional_losses_377768inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_dropout_81_layer_call_and_return_conditional_losses_377773inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_dict_wrapper
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
�B�
*__inference_dense_121_layer_call_fn_377782inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dense_121_layer_call_and_return_conditional_losses_377792inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
N
t	variables
u	keras_api
	vtotal
	wcount"
_tf_keras_metric
^
x	variables
y	keras_api
	ztotal
	{count
|
_fn_kwargs"
_tf_keras_metric
.
v0
w1"
trackable_list_wrapper
-
t	variables"
_generic_user_object
:  (2total
:  (2count
.
z0
{1"
trackable_list_wrapper
-
x	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper�
!__inference__wrapped_model_377470y'(898�5
.�+
)�&
dense_119_input���������
� "5�2
0
	dense_121#� 
	dense_121����������
E__inference_dense_119_layer_call_and_return_conditional_losses_377699c/�,
%�"
 �
inputs���������
� ",�)
"�
tensor_0���������@
� �
*__inference_dense_119_layer_call_fn_377688X/�,
%�"
 �
inputs���������
� "!�
unknown���������@�
E__inference_dense_120_layer_call_and_return_conditional_losses_377746c'(/�,
%�"
 �
inputs���������@
� ",�)
"�
tensor_0���������@
� �
*__inference_dense_120_layer_call_fn_377735X'(/�,
%�"
 �
inputs���������@
� "!�
unknown���������@�
E__inference_dense_121_layer_call_and_return_conditional_losses_377792c89/�,
%�"
 �
inputs���������@
� ",�)
"�
tensor_0���������
� �
*__inference_dense_121_layer_call_fn_377782X89/�,
%�"
 �
inputs���������@
� "!�
unknown����������
F__inference_dropout_80_layer_call_and_return_conditional_losses_377721c3�0
)�&
 �
inputs���������@
p
� ",�)
"�
tensor_0���������@
� �
F__inference_dropout_80_layer_call_and_return_conditional_losses_377726c3�0
)�&
 �
inputs���������@
p 
� ",�)
"�
tensor_0���������@
� �
+__inference_dropout_80_layer_call_fn_377704X3�0
)�&
 �
inputs���������@
p
� "!�
unknown���������@�
+__inference_dropout_80_layer_call_fn_377709X3�0
)�&
 �
inputs���������@
p 
� "!�
unknown���������@�
F__inference_dropout_81_layer_call_and_return_conditional_losses_377768c3�0
)�&
 �
inputs���������@
p
� ",�)
"�
tensor_0���������@
� �
F__inference_dropout_81_layer_call_and_return_conditional_losses_377773c3�0
)�&
 �
inputs���������@
p 
� ",�)
"�
tensor_0���������@
� �
+__inference_dropout_81_layer_call_fn_377751X3�0
)�&
 �
inputs���������@
p
� "!�
unknown���������@�
+__inference_dropout_81_layer_call_fn_377756X3�0
)�&
 �
inputs���������@
p 
� "!�
unknown���������@�
I__inference_sequential_42_layer_call_and_return_conditional_losses_377547x'(89@�=
6�3
)�&
dense_119_input���������
p

 
� ",�)
"�
tensor_0���������
� �
I__inference_sequential_42_layer_call_and_return_conditional_losses_377578x'(89@�=
6�3
)�&
dense_119_input���������
p 

 
� ",�)
"�
tensor_0���������
� �
.__inference_sequential_42_layer_call_fn_377595m'(89@�=
6�3
)�&
dense_119_input���������
p

 
� "!�
unknown����������
.__inference_sequential_42_layer_call_fn_377612m'(89@�=
6�3
)�&
dense_119_input���������
p 

 
� "!�
unknown����������
$__inference_signature_wrapper_377679�'(89K�H
� 
A�>
<
dense_119_input)�&
dense_119_input���������"5�2
0
	dense_121#� 
	dense_121���������