дв
ая
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
А
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
resourceИ
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
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
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
dtypetypeИ
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
┴
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
executor_typestring Ии
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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.14.02v2.14.0-rc1-21-g4dacf3f368e8¤Ж
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
dense_100/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_100/bias
m
"dense_100/bias/Read/ReadVariableOpReadVariableOpdense_100/bias*
_output_shapes
:*
dtype0
|
dense_100/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*!
shared_namedense_100/kernel
u
$dense_100/kernel/Read/ReadVariableOpReadVariableOpdense_100/kernel*
_output_shapes

:@*
dtype0
r
dense_99/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_99/bias
k
!dense_99/bias/Read/ReadVariableOpReadVariableOpdense_99/bias*
_output_shapes
:@*
dtype0
z
dense_99/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@* 
shared_namedense_99/kernel
s
#dense_99/kernel/Read/ReadVariableOpReadVariableOpdense_99/kernel*
_output_shapes

:@@*
dtype0
r
dense_98/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_98/bias
k
!dense_98/bias/Read/ReadVariableOpReadVariableOpdense_98/bias*
_output_shapes
:@*
dtype0
z
dense_98/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@* 
shared_namedense_98/kernel
s
#dense_98/kernel/Read/ReadVariableOpReadVariableOpdense_98/kernel*
_output_shapes

:@*
dtype0
Б
serving_default_dense_98_inputPlaceholder*'
_output_shapes
:         *
dtype0*
shape:         
е
StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_98_inputdense_98/kerneldense_98/biasdense_99/kerneldense_99/biasdense_100/kerneldense_100/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference_signature_wrapper_7529

NoOpNoOp
╪(
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*У(
valueЙ(BЖ( B '
█
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
signatures*
ж
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
е
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator* 
ж
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses

$kernel
%bias*
е
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses
,_random_generator* 
ж
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses

3kernel
4bias*
.
0
1
$2
%3
34
45*
.
0
1
$2
%3
34
45*
* 
░
5non_trainable_variables

6layers
7metrics
8layer_regularization_losses
9layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

:trace_0
;trace_1* 

<trace_0
=trace_1* 
* 
O
>
_variables
?_iterations
@_learning_rate
A_update_step_xla*

Bserving_default* 

0
1*

0
1*
* 
У
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Htrace_0* 

Itrace_0* 
_Y
VARIABLE_VALUEdense_98/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_98/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
С
Jnon_trainable_variables

Klayers
Lmetrics
Mlayer_regularization_losses
Nlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

Otrace_0
Ptrace_1* 

Qtrace_0
Rtrace_1* 
* 

$0
%1*

$0
%1*
* 
У
Snon_trainable_variables

Tlayers
Umetrics
Vlayer_regularization_losses
Wlayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*

Xtrace_0* 

Ytrace_0* 
_Y
VARIABLE_VALUEdense_99/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_99/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
С
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses* 

_trace_0
`trace_1* 

atrace_0
btrace_1* 
* 

30
41*

30
41*
* 
У
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses*

htrace_0* 

itrace_0* 
`Z
VARIABLE_VALUEdense_100/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_100/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
'
0
1
2
3
4*

j0
k1*
* 
* 
* 
* 
* 
* 

?0*
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
8
l	variables
m	keras_api
	ntotal
	ocount*
H
p	variables
q	keras_api
	rtotal
	scount
t
_fn_kwargs*

n0
o1*

l	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

r0
s1*

p	variables*
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
┴
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense_98/kerneldense_98/biasdense_99/kerneldense_99/biasdense_100/kerneldense_100/bias	iterationlearning_ratetotal_1count_1totalcountConst*
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
GPU 2J 8В *&
f!R
__inference__traced_save_7736
╝
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_98/kerneldense_98/biasdense_99/kerneldense_99/biasdense_100/kerneldense_100/bias	iterationlearning_ratetotal_1count_1totalcount*
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
GPU 2J 8В *)
f$R"
 __inference__traced_restore_7781ї╜
д

c
D__inference_dropout_67_layer_call_and_return_conditional_losses_7379

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         @Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Ш
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0*

seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>ж
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:         @a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
╔

є
B__inference_dense_99_layer_call_and_return_conditional_losses_7362

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         @a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
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
:         @
 
_user_specified_nameinputs
╔

є
B__inference_dense_98_layer_call_and_return_conditional_losses_7549

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         @a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
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
:         
 
_user_specified_nameinputs
╫
b
D__inference_dropout_67_layer_call_and_return_conditional_losses_7623

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:         @[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
№
Ф
G__inference_sequential_35_layer_call_and_return_conditional_losses_7428
dense_98_input
dense_98_7400:@
dense_98_7402:@
dense_99_7411:@@
dense_99_7413:@ 
dense_100_7422:@
dense_100_7424:
identityИв!dense_100/StatefulPartitionedCallв dense_98/StatefulPartitionedCallв dense_99/StatefulPartitionedCallЄ
 dense_98/StatefulPartitionedCallStatefulPartitionedCalldense_98_inputdense_98_7400dense_98_7402*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_98_layer_call_and_return_conditional_losses_7333▌
dropout_66/PartitionedCallPartitionedCall)dense_98/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_66_layer_call_and_return_conditional_losses_7409З
 dense_99/StatefulPartitionedCallStatefulPartitionedCall#dropout_66/PartitionedCall:output:0dense_99_7411dense_99_7413*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_99_layer_call_and_return_conditional_losses_7362▌
dropout_67/PartitionedCallPartitionedCall)dense_99/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_67_layer_call_and_return_conditional_losses_7420Л
!dense_100/StatefulPartitionedCallStatefulPartitionedCall#dropout_67/PartitionedCall:output:0dense_100_7422dense_100_7424*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_100_layer_call_and_return_conditional_losses_7390y
IdentityIdentity*dense_100/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         М
NoOpNoOp"^dense_100/StatefulPartitionedCall!^dense_98/StatefulPartitionedCall!^dense_99/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : : : 2F
!dense_100/StatefulPartitionedCall!dense_100/StatefulPartitionedCall2D
 dense_98/StatefulPartitionedCall dense_98/StatefulPartitionedCall2D
 dense_99/StatefulPartitionedCall dense_99/StatefulPartitionedCall:$ 

_user_specified_name7424:$ 

_user_specified_name7422:$ 

_user_specified_name7413:$ 

_user_specified_name7411:$ 

_user_specified_name7402:$ 

_user_specified_name7400:W S
'
_output_shapes
:         
(
_user_specified_namedense_98_input
ц
Ф
'__inference_dense_98_layer_call_fn_7538

inputs
unknown:@
	unknown_0:@
identityИвStatefulPartitionedCall╫
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_98_layer_call_and_return_conditional_losses_7333o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name7534:$ 

_user_specified_name7532:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╔

є
B__inference_dense_99_layer_call_and_return_conditional_losses_7596

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         @a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
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
:         @
 
_user_specified_nameinputs
╦
b
)__inference_dropout_66_layer_call_fn_7554

inputs
identityИвStatefulPartitionedCall┐
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_66_layer_call_and_return_conditional_losses_7350o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
╚

Н
,__inference_sequential_35_layer_call_fn_7462
dense_98_input
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:@
	unknown_4:
identityИвStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCalldense_98_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_35_layer_call_and_return_conditional_losses_7428o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name7458:$ 

_user_specified_name7456:$ 

_user_specified_name7454:$ 

_user_specified_name7452:$ 

_user_specified_name7450:$ 

_user_specified_name7448:W S
'
_output_shapes
:         
(
_user_specified_namedense_98_input
╫
b
D__inference_dropout_66_layer_call_and_return_conditional_losses_7409

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:         @[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
д

c
D__inference_dropout_66_layer_call_and_return_conditional_losses_7571

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         @Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Ш
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0*

seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>ж
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:         @a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Ў	
Ї
C__inference_dense_100_layer_call_and_return_conditional_losses_7390

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
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
:         @
 
_user_specified_nameinputs
╚

Н
,__inference_sequential_35_layer_call_fn_7445
dense_98_input
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:@
	unknown_4:
identityИвStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCalldense_98_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_35_layer_call_and_return_conditional_losses_7397o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name7441:$ 

_user_specified_name7439:$ 

_user_specified_name7437:$ 

_user_specified_name7435:$ 

_user_specified_name7433:$ 

_user_specified_name7431:W S
'
_output_shapes
:         
(
_user_specified_namedense_98_input
╦
b
)__inference_dropout_67_layer_call_fn_7601

inputs
identityИвStatefulPartitionedCall┐
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_67_layer_call_and_return_conditional_losses_7379o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
╫
b
D__inference_dropout_66_layer_call_and_return_conditional_losses_7576

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:         @[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
╖&
Ф
__inference__wrapped_model_7320
dense_98_inputG
5sequential_35_dense_98_matmul_readvariableop_resource:@D
6sequential_35_dense_98_biasadd_readvariableop_resource:@G
5sequential_35_dense_99_matmul_readvariableop_resource:@@D
6sequential_35_dense_99_biasadd_readvariableop_resource:@H
6sequential_35_dense_100_matmul_readvariableop_resource:@E
7sequential_35_dense_100_biasadd_readvariableop_resource:
identityИв.sequential_35/dense_100/BiasAdd/ReadVariableOpв-sequential_35/dense_100/MatMul/ReadVariableOpв-sequential_35/dense_98/BiasAdd/ReadVariableOpв,sequential_35/dense_98/MatMul/ReadVariableOpв-sequential_35/dense_99/BiasAdd/ReadVariableOpв,sequential_35/dense_99/MatMul/ReadVariableOpв
,sequential_35/dense_98/MatMul/ReadVariableOpReadVariableOp5sequential_35_dense_98_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0Я
sequential_35/dense_98/MatMulMatMuldense_98_input4sequential_35/dense_98/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @а
-sequential_35/dense_98/BiasAdd/ReadVariableOpReadVariableOp6sequential_35_dense_98_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0╗
sequential_35/dense_98/BiasAddBiasAdd'sequential_35/dense_98/MatMul:product:05sequential_35/dense_98/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @~
sequential_35/dense_98/ReluRelu'sequential_35/dense_98/BiasAdd:output:0*
T0*'
_output_shapes
:         @К
!sequential_35/dropout_66/IdentityIdentity)sequential_35/dense_98/Relu:activations:0*
T0*'
_output_shapes
:         @в
,sequential_35/dense_99/MatMul/ReadVariableOpReadVariableOp5sequential_35_dense_99_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0╗
sequential_35/dense_99/MatMulMatMul*sequential_35/dropout_66/Identity:output:04sequential_35/dense_99/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @а
-sequential_35/dense_99/BiasAdd/ReadVariableOpReadVariableOp6sequential_35_dense_99_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0╗
sequential_35/dense_99/BiasAddBiasAdd'sequential_35/dense_99/MatMul:product:05sequential_35/dense_99/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @~
sequential_35/dense_99/ReluRelu'sequential_35/dense_99/BiasAdd:output:0*
T0*'
_output_shapes
:         @К
!sequential_35/dropout_67/IdentityIdentity)sequential_35/dense_99/Relu:activations:0*
T0*'
_output_shapes
:         @д
-sequential_35/dense_100/MatMul/ReadVariableOpReadVariableOp6sequential_35_dense_100_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0╜
sequential_35/dense_100/MatMulMatMul*sequential_35/dropout_67/Identity:output:05sequential_35/dense_100/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         в
.sequential_35/dense_100/BiasAdd/ReadVariableOpReadVariableOp7sequential_35_dense_100_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╛
sequential_35/dense_100/BiasAddBiasAdd(sequential_35/dense_100/MatMul:product:06sequential_35/dense_100/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         w
IdentityIdentity(sequential_35/dense_100/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         ┴
NoOpNoOp/^sequential_35/dense_100/BiasAdd/ReadVariableOp.^sequential_35/dense_100/MatMul/ReadVariableOp.^sequential_35/dense_98/BiasAdd/ReadVariableOp-^sequential_35/dense_98/MatMul/ReadVariableOp.^sequential_35/dense_99/BiasAdd/ReadVariableOp-^sequential_35/dense_99/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : : : 2`
.sequential_35/dense_100/BiasAdd/ReadVariableOp.sequential_35/dense_100/BiasAdd/ReadVariableOp2^
-sequential_35/dense_100/MatMul/ReadVariableOp-sequential_35/dense_100/MatMul/ReadVariableOp2^
-sequential_35/dense_98/BiasAdd/ReadVariableOp-sequential_35/dense_98/BiasAdd/ReadVariableOp2\
,sequential_35/dense_98/MatMul/ReadVariableOp,sequential_35/dense_98/MatMul/ReadVariableOp2^
-sequential_35/dense_99/BiasAdd/ReadVariableOp-sequential_35/dense_99/BiasAdd/ReadVariableOp2\
,sequential_35/dense_99/MatMul/ReadVariableOp,sequential_35/dense_99/MatMul/ReadVariableOp:($
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
resource:W S
'
_output_shapes
:         
(
_user_specified_namedense_98_input
Э
E
)__inference_dropout_66_layer_call_fn_7559

inputs
identityп
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_66_layer_call_and_return_conditional_losses_7409`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
ц
Ф
'__inference_dense_99_layer_call_fn_7585

inputs
unknown:@@
	unknown_0:@
identityИвStatefulPartitionedCall╫
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_99_layer_call_and_return_conditional_losses_7362o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name7581:$ 

_user_specified_name7579:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
─c
│

__inference__traced_save_7736
file_prefix8
&read_disablecopyonread_dense_98_kernel:@4
&read_1_disablecopyonread_dense_98_bias:@:
(read_2_disablecopyonread_dense_99_kernel:@@4
&read_3_disablecopyonread_dense_99_bias:@;
)read_4_disablecopyonread_dense_100_kernel:@5
'read_5_disablecopyonread_dense_100_bias:,
"read_6_disablecopyonread_iteration:	 0
&read_7_disablecopyonread_learning_rate: *
 read_8_disablecopyonread_total_1: *
 read_9_disablecopyonread_count_1: )
read_10_disablecopyonread_total: )
read_11_disablecopyonread_count: 
savev2_const
identity_25ИвMergeV2CheckpointsвRead/DisableCopyOnReadвRead/ReadVariableOpвRead_1/DisableCopyOnReadвRead_1/ReadVariableOpвRead_10/DisableCopyOnReadвRead_10/ReadVariableOpвRead_11/DisableCopyOnReadвRead_11/ReadVariableOpвRead_2/DisableCopyOnReadвRead_2/ReadVariableOpвRead_3/DisableCopyOnReadвRead_3/ReadVariableOpвRead_4/DisableCopyOnReadвRead_4/ReadVariableOpвRead_5/DisableCopyOnReadвRead_5/ReadVariableOpвRead_6/DisableCopyOnReadвRead_6/ReadVariableOpвRead_7/DisableCopyOnReadвRead_7/ReadVariableOpвRead_8/DisableCopyOnReadвRead_8/ReadVariableOpвRead_9/DisableCopyOnReadвRead_9/ReadVariableOpw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: x
Read/DisableCopyOnReadDisableCopyOnRead&read_disablecopyonread_dense_98_kernel"/device:CPU:0*
_output_shapes
 в
Read/ReadVariableOpReadVariableOp&read_disablecopyonread_dense_98_kernel^Read/DisableCopyOnRead"/device:CPU:0*
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

:@z
Read_1/DisableCopyOnReadDisableCopyOnRead&read_1_disablecopyonread_dense_98_bias"/device:CPU:0*
_output_shapes
 в
Read_1/ReadVariableOpReadVariableOp&read_1_disablecopyonread_dense_98_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
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
:@|
Read_2/DisableCopyOnReadDisableCopyOnRead(read_2_disablecopyonread_dense_99_kernel"/device:CPU:0*
_output_shapes
 и
Read_2/ReadVariableOpReadVariableOp(read_2_disablecopyonread_dense_99_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
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

:@@z
Read_3/DisableCopyOnReadDisableCopyOnRead&read_3_disablecopyonread_dense_99_bias"/device:CPU:0*
_output_shapes
 в
Read_3/ReadVariableOpReadVariableOp&read_3_disablecopyonread_dense_99_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
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
Read_4/DisableCopyOnReadDisableCopyOnRead)read_4_disablecopyonread_dense_100_kernel"/device:CPU:0*
_output_shapes
 й
Read_4/ReadVariableOpReadVariableOp)read_4_disablecopyonread_dense_100_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*
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
Read_5/DisableCopyOnReadDisableCopyOnRead'read_5_disablecopyonread_dense_100_bias"/device:CPU:0*
_output_shapes
 г
Read_5/ReadVariableOpReadVariableOp'read_5_disablecopyonread_dense_100_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
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
 Ъ
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
 Ю
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
 Ш
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
 Ш
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
 Щ
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
 Щ
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
: У
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*╝
value▓BпB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЗ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*-
value$B"B B B B B B B B B B B B B ч
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes
2	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
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
: Ы
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
_user_specified_namedense_100/bias:0,
*
_user_specified_namedense_100/kernel:-)
'
_user_specified_namedense_99/bias:/+
)
_user_specified_namedense_99/kernel:-)
'
_user_specified_namedense_98/bias:/+
)
_user_specified_namedense_98/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
И:
▀
 __inference__traced_restore_7781
file_prefix2
 assignvariableop_dense_98_kernel:@.
 assignvariableop_1_dense_98_bias:@4
"assignvariableop_2_dense_99_kernel:@@.
 assignvariableop_3_dense_99_bias:@5
#assignvariableop_4_dense_100_kernel:@/
!assignvariableop_5_dense_100_bias:&
assignvariableop_6_iteration:	 *
 assignvariableop_7_learning_rate: $
assignvariableop_8_total_1: $
assignvariableop_9_count_1: #
assignvariableop_10_total: #
assignvariableop_11_count: 
identity_13ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_2вAssignVariableOp_3вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9Ц
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*╝
value▓BпB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHК
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*-
value$B"B B B B B B B B B B B B B ▀
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*H
_output_shapes6
4:::::::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOpAssignVariableOp assignvariableop_dense_98_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_98_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_99_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_99_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_100_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:╕
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_100_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:│
AssignVariableOp_6AssignVariableOpassignvariableop_6_iterationIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_7AssignVariableOp assignvariableop_7_learning_rateIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:▒
AssignVariableOp_8AssignVariableOpassignvariableop_8_total_1Identity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:▒
AssignVariableOp_9AssignVariableOpassignvariableop_9_count_1Identity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_10AssignVariableOpassignvariableop_10_totalIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_11AssignVariableOpassignvariableop_11_countIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 ╫
Identity_12Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_13IdentityIdentity_12:output:0^NoOp_1*
T0*
_output_shapes
: а
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
_user_specified_namedense_100/bias:0,
*
_user_specified_namedense_100/kernel:-)
'
_user_specified_namedense_99/bias:/+
)
_user_specified_namedense_99/kernel:-)
'
_user_specified_namedense_98/bias:/+
)
_user_specified_namedense_98/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Э
E
)__inference_dropout_67_layer_call_fn_7606

inputs
identityп
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_67_layer_call_and_return_conditional_losses_7420`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
∙
▐
G__inference_sequential_35_layer_call_and_return_conditional_losses_7397
dense_98_input
dense_98_7334:@
dense_98_7336:@
dense_99_7363:@@
dense_99_7365:@ 
dense_100_7391:@
dense_100_7393:
identityИв!dense_100/StatefulPartitionedCallв dense_98/StatefulPartitionedCallв dense_99/StatefulPartitionedCallв"dropout_66/StatefulPartitionedCallв"dropout_67/StatefulPartitionedCallЄ
 dense_98/StatefulPartitionedCallStatefulPartitionedCalldense_98_inputdense_98_7334dense_98_7336*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_98_layer_call_and_return_conditional_losses_7333э
"dropout_66/StatefulPartitionedCallStatefulPartitionedCall)dense_98/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_66_layer_call_and_return_conditional_losses_7350П
 dense_99/StatefulPartitionedCallStatefulPartitionedCall+dropout_66/StatefulPartitionedCall:output:0dense_99_7363dense_99_7365*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_99_layer_call_and_return_conditional_losses_7362Т
"dropout_67/StatefulPartitionedCallStatefulPartitionedCall)dense_99/StatefulPartitionedCall:output:0#^dropout_66/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_67_layer_call_and_return_conditional_losses_7379У
!dense_100/StatefulPartitionedCallStatefulPartitionedCall+dropout_67/StatefulPartitionedCall:output:0dense_100_7391dense_100_7393*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_100_layer_call_and_return_conditional_losses_7390y
IdentityIdentity*dense_100/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ╓
NoOpNoOp"^dense_100/StatefulPartitionedCall!^dense_98/StatefulPartitionedCall!^dense_99/StatefulPartitionedCall#^dropout_66/StatefulPartitionedCall#^dropout_67/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : : : 2F
!dense_100/StatefulPartitionedCall!dense_100/StatefulPartitionedCall2D
 dense_98/StatefulPartitionedCall dense_98/StatefulPartitionedCall2D
 dense_99/StatefulPartitionedCall dense_99/StatefulPartitionedCall2H
"dropout_66/StatefulPartitionedCall"dropout_66/StatefulPartitionedCall2H
"dropout_67/StatefulPartitionedCall"dropout_67/StatefulPartitionedCall:$ 

_user_specified_name7393:$ 

_user_specified_name7391:$ 

_user_specified_name7365:$ 

_user_specified_name7363:$ 

_user_specified_name7336:$ 

_user_specified_name7334:W S
'
_output_shapes
:         
(
_user_specified_namedense_98_input
╫
b
D__inference_dropout_67_layer_call_and_return_conditional_losses_7420

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:         @[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
д

c
D__inference_dropout_67_layer_call_and_return_conditional_losses_7618

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         @Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Ш
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0*

seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>ж
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:         @a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
д

c
D__inference_dropout_66_layer_call_and_return_conditional_losses_7350

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         @Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Ш
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0*

seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>ж
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:         @a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Ў	
Ї
C__inference_dense_100_layer_call_and_return_conditional_losses_7642

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
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
:         @
 
_user_specified_nameinputs
╔

є
B__inference_dense_98_layer_call_and_return_conditional_losses_7333

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         @a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
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
:         
 
_user_specified_nameinputs
Ц

Г
"__inference_signature_wrapper_7529
dense_98_input
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:@
	unknown_4:
identityИвStatefulPartitionedCallЁ
StatefulPartitionedCallStatefulPartitionedCalldense_98_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *(
f#R!
__inference__wrapped_model_7320o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name7525:$ 

_user_specified_name7523:$ 

_user_specified_name7521:$ 

_user_specified_name7519:$ 

_user_specified_name7517:$ 

_user_specified_name7515:W S
'
_output_shapes
:         
(
_user_specified_namedense_98_input
ш
Х
(__inference_dense_100_layer_call_fn_7632

inputs
unknown:@
	unknown_0:
identityИвStatefulPartitionedCall╪
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_100_layer_call_and_return_conditional_losses_7390o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:$ 

_user_specified_name7628:$ 

_user_specified_name7626:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs"зL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*║
serving_defaultж
I
dense_98_input7
 serving_default_dense_98_input:0         =
	dense_1000
StatefulPartitionedCall:0         tensorflow/serving/predict:РК
ї
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
signatures"
_tf_keras_sequential
╗
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
╝
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator"
_tf_keras_layer
╗
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses

$kernel
%bias"
_tf_keras_layer
╝
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses
,_random_generator"
_tf_keras_layer
╗
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses

3kernel
4bias"
_tf_keras_layer
J
0
1
$2
%3
34
45"
trackable_list_wrapper
J
0
1
$2
%3
34
45"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
5non_trainable_variables

6layers
7metrics
8layer_regularization_losses
9layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
╦
:trace_0
;trace_12Ф
,__inference_sequential_35_layer_call_fn_7445
,__inference_sequential_35_layer_call_fn_7462╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z:trace_0z;trace_1
Б
<trace_0
=trace_12╩
G__inference_sequential_35_layer_call_and_return_conditional_losses_7397
G__inference_sequential_35_layer_call_and_return_conditional_losses_7428╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z<trace_0z=trace_1
╤B╬
__inference__wrapped_model_7320dense_98_input"Ш
С▓Н
FullArgSpec
argsЪ

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
j
>
_variables
?_iterations
@_learning_rate
A_update_step_xla"
experimentalOptimizer
,
Bserving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
с
Htrace_02─
'__inference_dense_98_layer_call_fn_7538Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zHtrace_0
№
Itrace_02▀
B__inference_dense_98_layer_call_and_return_conditional_losses_7549Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zItrace_0
!:@2dense_98/kernel
:@2dense_98/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
Jnon_trainable_variables

Klayers
Lmetrics
Mlayer_regularization_losses
Nlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
╣
Otrace_0
Ptrace_12В
)__inference_dropout_66_layer_call_fn_7554
)__inference_dropout_66_layer_call_fn_7559й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zOtrace_0zPtrace_1
я
Qtrace_0
Rtrace_12╕
D__inference_dropout_66_layer_call_and_return_conditional_losses_7571
D__inference_dropout_66_layer_call_and_return_conditional_losses_7576й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zQtrace_0zRtrace_1
"
_generic_user_object
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
Snon_trainable_variables

Tlayers
Umetrics
Vlayer_regularization_losses
Wlayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
с
Xtrace_02─
'__inference_dense_99_layer_call_fn_7585Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zXtrace_0
№
Ytrace_02▀
B__inference_dense_99_layer_call_and_return_conditional_losses_7596Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zYtrace_0
!:@@2dense_99/kernel
:@2dense_99/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
╣
_trace_0
`trace_12В
)__inference_dropout_67_layer_call_fn_7601
)__inference_dropout_67_layer_call_fn_7606й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z_trace_0z`trace_1
я
atrace_0
btrace_12╕
D__inference_dropout_67_layer_call_and_return_conditional_losses_7618
D__inference_dropout_67_layer_call_and_return_conditional_losses_7623й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zatrace_0zbtrace_1
"
_generic_user_object
.
30
41"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
н
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
т
htrace_02┼
(__inference_dense_100_layer_call_fn_7632Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zhtrace_0
¤
itrace_02р
C__inference_dense_100_layer_call_and_return_conditional_losses_7642Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zitrace_0
": @2dense_100/kernel
:2dense_100/bias
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
j0
k1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЄBя
,__inference_sequential_35_layer_call_fn_7445dense_98_input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЄBя
,__inference_sequential_35_layer_call_fn_7462dense_98_input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
НBК
G__inference_sequential_35_layer_call_and_return_conditional_losses_7397dense_98_input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
НBК
G__inference_sequential_35_layer_call_and_return_conditional_losses_7428dense_98_input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
'
?0"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
╡2▓п
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
▄B┘
"__inference_signature_wrapper_7529dense_98_input"а
Щ▓Х
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 #

kwonlyargsЪ
jdense_98_input
kwonlydefaults
 
annotationsк *
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
╤B╬
'__inference_dense_98_layer_call_fn_7538inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ьBщ
B__inference_dense_98_layer_call_and_return_conditional_losses_7549inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
▀B▄
)__inference_dropout_66_layer_call_fn_7554inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
▀B▄
)__inference_dropout_66_layer_call_fn_7559inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
·Bў
D__inference_dropout_66_layer_call_and_return_conditional_losses_7571inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
·Bў
D__inference_dropout_66_layer_call_and_return_conditional_losses_7576inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
╤B╬
'__inference_dense_99_layer_call_fn_7585inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ьBщ
B__inference_dense_99_layer_call_and_return_conditional_losses_7596inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
▀B▄
)__inference_dropout_67_layer_call_fn_7601inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
▀B▄
)__inference_dropout_67_layer_call_fn_7606inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
·Bў
D__inference_dropout_67_layer_call_and_return_conditional_losses_7618inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
·Bў
D__inference_dropout_67_layer_call_and_return_conditional_losses_7623inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
╥B╧
(__inference_dense_100_layer_call_fn_7632inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
C__inference_dense_100_layer_call_and_return_conditional_losses_7642inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
N
l	variables
m	keras_api
	ntotal
	ocount"
_tf_keras_metric
^
p	variables
q	keras_api
	rtotal
	scount
t
_fn_kwargs"
_tf_keras_metric
.
n0
o1"
trackable_list_wrapper
-
l	variables"
_generic_user_object
:  (2total
:  (2count
.
r0
s1"
trackable_list_wrapper
-
p	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapperЫ
__inference__wrapped_model_7320x$%347в4
-в*
(К%
dense_98_input         
к "5к2
0
	dense_100#К 
	dense_100         к
C__inference_dense_100_layer_call_and_return_conditional_losses_7642c34/в,
%в"
 К
inputs         @
к ",в)
"К
tensor_0         
Ъ Д
(__inference_dense_100_layer_call_fn_7632X34/в,
%в"
 К
inputs         @
к "!К
unknown         й
B__inference_dense_98_layer_call_and_return_conditional_losses_7549c/в,
%в"
 К
inputs         
к ",в)
"К
tensor_0         @
Ъ Г
'__inference_dense_98_layer_call_fn_7538X/в,
%в"
 К
inputs         
к "!К
unknown         @й
B__inference_dense_99_layer_call_and_return_conditional_losses_7596c$%/в,
%в"
 К
inputs         @
к ",в)
"К
tensor_0         @
Ъ Г
'__inference_dense_99_layer_call_fn_7585X$%/в,
%в"
 К
inputs         @
к "!К
unknown         @л
D__inference_dropout_66_layer_call_and_return_conditional_losses_7571c3в0
)в&
 К
inputs         @
p
к ",в)
"К
tensor_0         @
Ъ л
D__inference_dropout_66_layer_call_and_return_conditional_losses_7576c3в0
)в&
 К
inputs         @
p 
к ",в)
"К
tensor_0         @
Ъ Е
)__inference_dropout_66_layer_call_fn_7554X3в0
)в&
 К
inputs         @
p
к "!К
unknown         @Е
)__inference_dropout_66_layer_call_fn_7559X3в0
)в&
 К
inputs         @
p 
к "!К
unknown         @л
D__inference_dropout_67_layer_call_and_return_conditional_losses_7618c3в0
)в&
 К
inputs         @
p
к ",в)
"К
tensor_0         @
Ъ л
D__inference_dropout_67_layer_call_and_return_conditional_losses_7623c3в0
)в&
 К
inputs         @
p 
к ",в)
"К
tensor_0         @
Ъ Е
)__inference_dropout_67_layer_call_fn_7601X3в0
)в&
 К
inputs         @
p
к "!К
unknown         @Е
)__inference_dropout_67_layer_call_fn_7606X3в0
)в&
 К
inputs         @
p 
к "!К
unknown         @┬
G__inference_sequential_35_layer_call_and_return_conditional_losses_7397w$%34?в<
5в2
(К%
dense_98_input         
p

 
к ",в)
"К
tensor_0         
Ъ ┬
G__inference_sequential_35_layer_call_and_return_conditional_losses_7428w$%34?в<
5в2
(К%
dense_98_input         
p 

 
к ",в)
"К
tensor_0         
Ъ Ь
,__inference_sequential_35_layer_call_fn_7445l$%34?в<
5в2
(К%
dense_98_input         
p

 
к "!К
unknown         Ь
,__inference_sequential_35_layer_call_fn_7462l$%34?в<
5в2
(К%
dense_98_input         
p 

 
к "!К
unknown         ▒
"__inference_signature_wrapper_7529К$%34IвF
в 
?к<
:
dense_98_input(К%
dense_98_input         "5к2
0
	dense_100#К 
	dense_100         