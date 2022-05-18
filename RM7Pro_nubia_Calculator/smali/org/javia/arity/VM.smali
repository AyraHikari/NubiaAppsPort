.class Lorg/javia/arity/VM;
.super Ljava/lang/Object;
.source "VM.java"


# static fields
.field static final ABS:B = 0x1dt

.field static final ACOS:B = 0x15t

.field static final ACOSH:B = 0x1bt

.field static final ADD:B = 0x3t

.field static final ASIN:B = 0x14t

.field static final ASINH:B = 0x1at

.field static final ATAN:B = 0x16t

.field static final ATANH:B = 0x1ct

.field static final CALL:B = 0x2t

.field static final CBRT:B = 0xet

.field static final CEIL:B = 0x1ft

.field static final COMB:B = 0x24t

.field static final CONST:B = 0x1t

.field static final COS:B = 0x12t

.field static final COSH:B = 0x18t

.field static final DIV:B = 0x6t

.field static final EXP:B = 0xft

.field static final FACT:B = 0xbt

.field static final FLOOR:B = 0x1et

.field static final GCD:B = 0x23t

.field static final LN:B = 0x10t

.field static final LOAD0:B = 0x26t

.field static final LOAD1:B = 0x27t

.field static final LOAD2:B = 0x28t

.field static final LOAD3:B = 0x29t

.field static final LOAD4:B = 0x2at

.field static final MAX:B = 0x22t

.field static final MIN:B = 0x21t

.field static final MOD:B = 0x7t

.field static final MUL:B = 0x5t

.field static final PERCENT:B = 0xct

.field static final PERM:B = 0x25t

.field static final POWER:B = 0xat

.field static final RESERVED:B = 0x0t

.field static final RND:B = 0x8t

.field static final SIGN:B = 0x20t

.field static final SIN:B = 0x11t

.field static final SINH:B = 0x17t

.field static final SQRT:B = 0xdt

.field static final SUB:B = 0x4t

.field static final TAN:B = 0x13t

.field static final TANH:B = 0x19t

.field static final UMIN:B = 0x9t

.field static final arity:[B

.field static final builtins:[B

.field static final opcodeName:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 43

    const-string v0, "reserved"

    const-string v1, "const"

    const-string v2, "call"

    const-string v3, "add"

    const-string v4, "sub"

    const-string v5, "mul"

    const-string v6, "div"

    const-string v7, "mod"

    const-string v8, "rnd"

    const-string v9, "umin"

    const-string v10, "power"

    const-string v11, "fact"

    const-string v12, "percent"

    const-string v13, "sqrt"

    const-string v14, "cbrt"

    const-string v15, "exp"

    const-string v16, "ln"

    const-string v17, "sin"

    const-string v18, "cos"

    const-string v19, "tan"

    const-string v20, "asin"

    const-string v21, "acos"

    const-string v22, "atan"

    const-string v23, "sinh"

    const-string v24, "cosh"

    const-string v25, "tanh"

    const-string v26, "asinh"

    const-string v27, "acosh"

    const-string v28, "atanh"

    const-string v29, "abs"

    const-string v30, "floor"

    const-string v31, "ceil"

    const-string v32, "sign"

    const-string v33, "min"

    const-string v34, "max"

    const-string v35, "gcd"

    const-string v36, "comb"

    const-string v37, "perm"

    const-string v38, "load0"

    const-string v39, "load1"

    const-string v40, "load2"

    const-string v41, "load3"

    const-string v42, "load4"

    .line 68
    filled-new-array/range {v0 .. v42}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/javia/arity/VM;->opcodeName:[Ljava/lang/String;

    const/16 v0, 0x2b

    .line 70
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/javia/arity/VM;->arity:[B

    const/16 v0, 0x1a

    .line 72
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/javia/arity/VM;->builtins:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        -0x1t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x0t
        0x1t
        0x2t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0xdt
        0xet
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0xft
        0x10t
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x7t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
