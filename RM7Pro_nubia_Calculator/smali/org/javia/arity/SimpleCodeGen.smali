.class Lorg/javia/arity/SimpleCodeGen;
.super Lorg/javia/arity/TokenConsumer;
.source "SimpleCodeGen.java"


# static fields
.field static final HAS_ARGUMENTS:Lorg/javia/arity/SyntaxException;


# instance fields
.field code:Lorg/javia/arity/ByteStack;

.field consts:Lorg/javia/arity/DoubleStack;

.field exception:Lorg/javia/arity/SyntaxException;

.field funcs:Lorg/javia/arity/FunctionStack;

.field symbols:Lorg/javia/arity/Symbols;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lorg/javia/arity/SyntaxException;

    invoke-direct {v0}, Lorg/javia/arity/SyntaxException;-><init>()V

    sput-object v0, Lorg/javia/arity/SimpleCodeGen;->HAS_ARGUMENTS:Lorg/javia/arity/SyntaxException;

    return-void
.end method

.method constructor <init>(Lorg/javia/arity/SyntaxException;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Lorg/javia/arity/TokenConsumer;-><init>()V

    .line 28
    new-instance v0, Lorg/javia/arity/ByteStack;

    invoke-direct {v0}, Lorg/javia/arity/ByteStack;-><init>()V

    iput-object v0, p0, Lorg/javia/arity/SimpleCodeGen;->code:Lorg/javia/arity/ByteStack;

    .line 29
    new-instance v0, Lorg/javia/arity/DoubleStack;

    invoke-direct {v0}, Lorg/javia/arity/DoubleStack;-><init>()V

    iput-object v0, p0, Lorg/javia/arity/SimpleCodeGen;->consts:Lorg/javia/arity/DoubleStack;

    .line 30
    new-instance v0, Lorg/javia/arity/FunctionStack;

    invoke-direct {v0}, Lorg/javia/arity/FunctionStack;-><init>()V

    iput-object v0, p0, Lorg/javia/arity/SimpleCodeGen;->funcs:Lorg/javia/arity/FunctionStack;

    .line 38
    iput-object p1, p0, Lorg/javia/arity/SimpleCodeGen;->exception:Lorg/javia/arity/SyntaxException;

    return-void
.end method


# virtual methods
.method getFun()Lorg/javia/arity/CompiledFunction;
    .locals 7

    .line 114
    new-instance v6, Lorg/javia/arity/CompiledFunction;

    iget-object v0, p0, Lorg/javia/arity/SimpleCodeGen;->code:Lorg/javia/arity/ByteStack;

    invoke-virtual {v0}, Lorg/javia/arity/ByteStack;->toArray()[B

    move-result-object v2

    iget-object v0, p0, Lorg/javia/arity/SimpleCodeGen;->consts:Lorg/javia/arity/DoubleStack;

    invoke-virtual {v0}, Lorg/javia/arity/DoubleStack;->getRe()[D

    move-result-object v3

    iget-object v0, p0, Lorg/javia/arity/SimpleCodeGen;->consts:Lorg/javia/arity/DoubleStack;

    invoke-virtual {v0}, Lorg/javia/arity/DoubleStack;->getIm()[D

    move-result-object v4

    iget-object p0, p0, Lorg/javia/arity/SimpleCodeGen;->funcs:Lorg/javia/arity/FunctionStack;

    invoke-virtual {p0}, Lorg/javia/arity/FunctionStack;->toArray()[Lorg/javia/arity/Function;

    move-result-object v5

    const/4 v1, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/javia/arity/CompiledFunction;-><init>(I[B[D[D[Lorg/javia/arity/Function;)V

    return-object v6
.end method

.method getSymbol(Lorg/javia/arity/Token;)Lorg/javia/arity/Symbol;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    .line 54
    iget-object v0, p1, Lorg/javia/arity/Token;->name:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lorg/javia/arity/Token;->isDerivative()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    iget v2, p1, Lorg/javia/arity/Token;->arity:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    .line 58
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 60
    :cond_0
    iget-object p0, p0, Lorg/javia/arity/SimpleCodeGen;->exception:Lorg/javia/arity/SyntaxException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Derivative expects arity 1 but found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lorg/javia/arity/Token;->arity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lorg/javia/arity/Token;->position:I

    invoke-virtual {p0, v0, p1}, Lorg/javia/arity/SyntaxException;->set(Ljava/lang/String;I)Lorg/javia/arity/SyntaxException;

    move-result-object p0

    throw p0

    .line 63
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/javia/arity/SimpleCodeGen;->symbols:Lorg/javia/arity/Symbols;

    iget v3, p1, Lorg/javia/arity/Token;->arity:I

    invoke-virtual {v2, v0, v3}, Lorg/javia/arity/Symbols;->lookup(Ljava/lang/String;I)Lorg/javia/arity/Symbol;

    move-result-object v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_2

    .line 67
    iget-byte v3, v2, Lorg/javia/arity/Symbol;->op:B

    if-lez v3, :cond_2

    iget-object v3, v2, Lorg/javia/arity/Symbol;->fun:Lorg/javia/arity/Function;

    if-nez v3, :cond_2

    .line 68
    iget-byte v3, v2, Lorg/javia/arity/Symbol;->op:B

    invoke-static {v3}, Lorg/javia/arity/CompiledFunction;->makeOpFunction(I)Lorg/javia/arity/Function;

    move-result-object v3

    iput-object v3, v2, Lorg/javia/arity/Symbol;->fun:Lorg/javia/arity/Function;

    :cond_2
    if-eqz v1, :cond_4

    .line 70
    iget-object v1, v2, Lorg/javia/arity/Symbol;->fun:Lorg/javia/arity/Function;

    if-eqz v1, :cond_3

    goto :goto_1

    .line 71
    :cond_3
    iget-object p0, p0, Lorg/javia/arity/SimpleCodeGen;->exception:Lorg/javia/arity/SyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid derivative "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lorg/javia/arity/Token;->position:I

    invoke-virtual {p0, v0, p1}, Lorg/javia/arity/SyntaxException;->set(Ljava/lang/String;I)Lorg/javia/arity/SyntaxException;

    move-result-object p0

    throw p0

    :cond_4
    :goto_1
    return-object v2

    .line 65
    :cond_5
    iget-object p0, p0, Lorg/javia/arity/SimpleCodeGen;->exception:Lorg/javia/arity/SyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "undefined \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' with arity "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lorg/javia/arity/Token;->arity:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lorg/javia/arity/Token;->position:I

    invoke-virtual {p0, v0, p1}, Lorg/javia/arity/SyntaxException;->set(Ljava/lang/String;I)Lorg/javia/arity/SyntaxException;

    move-result-object p0

    throw p0
.end method

.method push(Lorg/javia/arity/Token;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    .line 78
    iget v0, p1, Lorg/javia/arity/Token;->id:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 105
    iget-byte v1, p1, Lorg/javia/arity/Token;->vmop:B

    if-lez v1, :cond_5

    goto :goto_1

    .line 86
    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/javia/arity/SimpleCodeGen;->getSymbol(Lorg/javia/arity/Token;)Lorg/javia/arity/Symbol;

    move-result-object v0

    .line 87
    invoke-virtual {p1}, Lorg/javia/arity/Token;->isDerivative()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 89
    iget-object p1, p0, Lorg/javia/arity/SimpleCodeGen;->funcs:Lorg/javia/arity/FunctionStack;

    iget-object v0, v0, Lorg/javia/arity/Symbol;->fun:Lorg/javia/arity/Function;

    invoke-virtual {v0}, Lorg/javia/arity/Function;->getDerivative()Lorg/javia/arity/Function;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/javia/arity/FunctionStack;->push(Lorg/javia/arity/Function;)V

    goto :goto_1

    .line 90
    :cond_0
    iget-byte p1, v0, Lorg/javia/arity/Symbol;->op:B

    if-lez p1, :cond_2

    .line 91
    iget-byte v1, v0, Lorg/javia/arity/Symbol;->op:B

    const/16 p1, 0x26

    if-lt v1, p1, :cond_4

    const/16 p1, 0x2a

    if-le v1, p1, :cond_1

    goto :goto_1

    .line 93
    :cond_1
    sget-object p1, Lorg/javia/arity/SimpleCodeGen;->HAS_ARGUMENTS:Lorg/javia/arity/SyntaxException;

    iget-object p0, p0, Lorg/javia/arity/SimpleCodeGen;->exception:Lorg/javia/arity/SyntaxException;

    iget p0, p0, Lorg/javia/arity/SyntaxException;->position:I

    const-string v0, "eval() on implicit function"

    invoke-virtual {p1, v0, p0}, Lorg/javia/arity/SyntaxException;->set(Ljava/lang/String;I)Lorg/javia/arity/SyntaxException;

    move-result-object p0

    throw p0

    .line 95
    :cond_2
    iget-object p1, v0, Lorg/javia/arity/Symbol;->fun:Lorg/javia/arity/Function;

    if-eqz p1, :cond_3

    .line 97
    iget-object p1, p0, Lorg/javia/arity/SimpleCodeGen;->funcs:Lorg/javia/arity/FunctionStack;

    iget-object v0, v0, Lorg/javia/arity/Symbol;->fun:Lorg/javia/arity/Function;

    invoke-virtual {p1, v0}, Lorg/javia/arity/FunctionStack;->push(Lorg/javia/arity/Function;)V

    goto :goto_1

    .line 100
    :cond_3
    iget-object p1, p0, Lorg/javia/arity/SimpleCodeGen;->consts:Lorg/javia/arity/DoubleStack;

    iget-wide v3, v0, Lorg/javia/arity/Symbol;->valueRe:D

    iget-wide v0, v0, Lorg/javia/arity/Symbol;->valueIm:D

    invoke-virtual {p1, v3, v4, v0, v1}, Lorg/javia/arity/DoubleStack;->push(DD)V

    goto :goto_0

    .line 81
    :pswitch_1
    iget-object v0, p0, Lorg/javia/arity/SimpleCodeGen;->consts:Lorg/javia/arity/DoubleStack;

    iget-wide v3, p1, Lorg/javia/arity/Token;->value:D

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Lorg/javia/arity/DoubleStack;->push(DD)V

    :goto_0
    move v1, v2

    .line 110
    :cond_4
    :goto_1
    iget-object p0, p0, Lorg/javia/arity/SimpleCodeGen;->code:Lorg/javia/arity/ByteStack;

    invoke-virtual {p0, v1}, Lorg/javia/arity/ByteStack;->push(B)V

    return-void

    .line 107
    :cond_5
    new-instance v0, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wrong vmop: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", id "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/javia/arity/Token;->id:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in \""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/javia/arity/SimpleCodeGen;->exception:Lorg/javia/arity/SyntaxException;

    iget-object p0, p0, Lorg/javia/arity/SyntaxException;->expression:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x22

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method setSymbols(Lorg/javia/arity/Symbols;)Lorg/javia/arity/SimpleCodeGen;
    .locals 0

    .line 42
    iput-object p1, p0, Lorg/javia/arity/SimpleCodeGen;->symbols:Lorg/javia/arity/Symbols;

    return-object p0
.end method

.method start()V
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/javia/arity/SimpleCodeGen;->code:Lorg/javia/arity/ByteStack;

    invoke-virtual {v0}, Lorg/javia/arity/ByteStack;->clear()V

    .line 49
    iget-object v0, p0, Lorg/javia/arity/SimpleCodeGen;->consts:Lorg/javia/arity/DoubleStack;

    invoke-virtual {v0}, Lorg/javia/arity/DoubleStack;->clear()V

    .line 50
    iget-object p0, p0, Lorg/javia/arity/SimpleCodeGen;->funcs:Lorg/javia/arity/FunctionStack;

    invoke-virtual {p0}, Lorg/javia/arity/FunctionStack;->clear()V

    return-void
.end method
