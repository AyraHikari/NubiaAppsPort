.class Lorg/javia/arity/Compiler;
.super Ljava/lang/Object;
.source "Compiler.java"


# instance fields
.field private final codeGen:Lorg/javia/arity/OptCodeGen;

.field private final decl:Lorg/javia/arity/Declaration;

.field private final declParser:Lorg/javia/arity/DeclarationParser;

.field private final exception:Lorg/javia/arity/SyntaxException;

.field private final lexer:Lorg/javia/arity/Lexer;

.field private final rpn:Lorg/javia/arity/RPN;

.field private final simpleCodeGen:Lorg/javia/arity/SimpleCodeGen;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lorg/javia/arity/SyntaxException;

    invoke-direct {v0}, Lorg/javia/arity/SyntaxException;-><init>()V

    iput-object v0, p0, Lorg/javia/arity/Compiler;->exception:Lorg/javia/arity/SyntaxException;

    .line 24
    new-instance v0, Lorg/javia/arity/Lexer;

    iget-object v1, p0, Lorg/javia/arity/Compiler;->exception:Lorg/javia/arity/SyntaxException;

    invoke-direct {v0, v1}, Lorg/javia/arity/Lexer;-><init>(Lorg/javia/arity/SyntaxException;)V

    iput-object v0, p0, Lorg/javia/arity/Compiler;->lexer:Lorg/javia/arity/Lexer;

    .line 25
    new-instance v0, Lorg/javia/arity/RPN;

    iget-object v1, p0, Lorg/javia/arity/Compiler;->exception:Lorg/javia/arity/SyntaxException;

    invoke-direct {v0, v1}, Lorg/javia/arity/RPN;-><init>(Lorg/javia/arity/SyntaxException;)V

    iput-object v0, p0, Lorg/javia/arity/Compiler;->rpn:Lorg/javia/arity/RPN;

    .line 26
    new-instance v0, Lorg/javia/arity/DeclarationParser;

    iget-object v1, p0, Lorg/javia/arity/Compiler;->exception:Lorg/javia/arity/SyntaxException;

    invoke-direct {v0, v1}, Lorg/javia/arity/DeclarationParser;-><init>(Lorg/javia/arity/SyntaxException;)V

    iput-object v0, p0, Lorg/javia/arity/Compiler;->declParser:Lorg/javia/arity/DeclarationParser;

    .line 27
    new-instance v0, Lorg/javia/arity/OptCodeGen;

    iget-object v1, p0, Lorg/javia/arity/Compiler;->exception:Lorg/javia/arity/SyntaxException;

    invoke-direct {v0, v1}, Lorg/javia/arity/OptCodeGen;-><init>(Lorg/javia/arity/SyntaxException;)V

    iput-object v0, p0, Lorg/javia/arity/Compiler;->codeGen:Lorg/javia/arity/OptCodeGen;

    .line 28
    new-instance v0, Lorg/javia/arity/SimpleCodeGen;

    iget-object v1, p0, Lorg/javia/arity/Compiler;->exception:Lorg/javia/arity/SyntaxException;

    invoke-direct {v0, v1}, Lorg/javia/arity/SimpleCodeGen;-><init>(Lorg/javia/arity/SyntaxException;)V

    iput-object v0, p0, Lorg/javia/arity/Compiler;->simpleCodeGen:Lorg/javia/arity/SimpleCodeGen;

    .line 29
    new-instance v0, Lorg/javia/arity/Declaration;

    invoke-direct {v0}, Lorg/javia/arity/Declaration;-><init>()V

    iput-object v0, p0, Lorg/javia/arity/Compiler;->decl:Lorg/javia/arity/Declaration;

    return-void
.end method


# virtual methods
.method compile(Lorg/javia/arity/Symbols;Ljava/lang/String;)Lorg/javia/arity/Function;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lorg/javia/arity/Compiler;->decl:Lorg/javia/arity/Declaration;

    iget-object v1, p0, Lorg/javia/arity/Compiler;->lexer:Lorg/javia/arity/Lexer;

    iget-object v2, p0, Lorg/javia/arity/Compiler;->declParser:Lorg/javia/arity/DeclarationParser;

    invoke-virtual {v0, p2, v1, v2}, Lorg/javia/arity/Declaration;->parse(Ljava/lang/String;Lorg/javia/arity/Lexer;Lorg/javia/arity/DeclarationParser;)V

    .line 40
    iget-object v0, p0, Lorg/javia/arity/Compiler;->decl:Lorg/javia/arity/Declaration;

    iget v0, v0, Lorg/javia/arity/Declaration;->arity:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 42
    :try_start_0
    new-instance v0, Lorg/javia/arity/Constant;

    iget-object v2, p0, Lorg/javia/arity/Compiler;->decl:Lorg/javia/arity/Declaration;

    iget-object v2, v2, Lorg/javia/arity/Declaration;->expression:Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lorg/javia/arity/Compiler;->compileSimple(Lorg/javia/arity/Symbols;Ljava/lang/String;)Lorg/javia/arity/Function;

    move-result-object v2

    invoke-virtual {v2}, Lorg/javia/arity/Function;->evalComplex()Lorg/javia/arity/Complex;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/javia/arity/Constant;-><init>(Lorg/javia/arity/Complex;)V
    :try_end_0
    .catch Lorg/javia/arity/SyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 44
    sget-object v2, Lorg/javia/arity/SimpleCodeGen;->HAS_ARGUMENTS:Lorg/javia/arity/SyntaxException;

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    .line 53
    invoke-virtual {p1}, Lorg/javia/arity/Symbols;->pushFrame()V

    .line 54
    iget-object v0, p0, Lorg/javia/arity/Compiler;->decl:Lorg/javia/arity/Declaration;

    iget-object v0, v0, Lorg/javia/arity/Declaration;->args:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/javia/arity/Symbols;->addArguments([Ljava/lang/String;)V

    .line 56
    :try_start_1
    iget-object v0, p0, Lorg/javia/arity/Compiler;->rpn:Lorg/javia/arity/RPN;

    iget-object v2, p0, Lorg/javia/arity/Compiler;->codeGen:Lorg/javia/arity/OptCodeGen;

    invoke-virtual {v2, p1}, Lorg/javia/arity/OptCodeGen;->setSymbols(Lorg/javia/arity/Symbols;)Lorg/javia/arity/SimpleCodeGen;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/javia/arity/RPN;->setConsumer(Lorg/javia/arity/TokenConsumer;)V

    .line 57
    iget-object v0, p0, Lorg/javia/arity/Compiler;->lexer:Lorg/javia/arity/Lexer;

    iget-object v2, p0, Lorg/javia/arity/Compiler;->decl:Lorg/javia/arity/Declaration;

    iget-object v2, v2, Lorg/javia/arity/Declaration;->expression:Ljava/lang/String;

    iget-object v3, p0, Lorg/javia/arity/Compiler;->rpn:Lorg/javia/arity/RPN;

    invoke-virtual {v0, v2, v3}, Lorg/javia/arity/Lexer;->scan(Ljava/lang/String;Lorg/javia/arity/TokenConsumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    invoke-virtual {p1}, Lorg/javia/arity/Symbols;->popFrame()V

    .line 61
    iget-object p1, p0, Lorg/javia/arity/Compiler;->decl:Lorg/javia/arity/Declaration;

    iget p1, p1, Lorg/javia/arity/Declaration;->arity:I

    if-ne p1, v1, :cond_2

    .line 63
    iget-object p1, p0, Lorg/javia/arity/Compiler;->codeGen:Lorg/javia/arity/OptCodeGen;

    iget p1, p1, Lorg/javia/arity/OptCodeGen;->intrinsicArity:I

    .line 65
    :cond_2
    iget-object p0, p0, Lorg/javia/arity/Compiler;->codeGen:Lorg/javia/arity/OptCodeGen;

    invoke-virtual {p0, p1}, Lorg/javia/arity/OptCodeGen;->getFun(I)Lorg/javia/arity/CompiledFunction;

    move-result-object v0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 59
    invoke-virtual {p1}, Lorg/javia/arity/Symbols;->popFrame()V

    throw p0

    .line 67
    :cond_3
    :goto_2
    iput-object p2, v0, Lorg/javia/arity/Function;->comment:Ljava/lang/String;

    return-object v0
.end method

.method compileSimple(Lorg/javia/arity/Symbols;Ljava/lang/String;)Lorg/javia/arity/Function;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lorg/javia/arity/Compiler;->rpn:Lorg/javia/arity/RPN;

    iget-object v1, p0, Lorg/javia/arity/Compiler;->simpleCodeGen:Lorg/javia/arity/SimpleCodeGen;

    invoke-virtual {v1, p1}, Lorg/javia/arity/SimpleCodeGen;->setSymbols(Lorg/javia/arity/Symbols;)Lorg/javia/arity/SimpleCodeGen;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/javia/arity/RPN;->setConsumer(Lorg/javia/arity/TokenConsumer;)V

    .line 33
    iget-object p1, p0, Lorg/javia/arity/Compiler;->lexer:Lorg/javia/arity/Lexer;

    iget-object v0, p0, Lorg/javia/arity/Compiler;->rpn:Lorg/javia/arity/RPN;

    invoke-virtual {p1, p2, v0}, Lorg/javia/arity/Lexer;->scan(Ljava/lang/String;Lorg/javia/arity/TokenConsumer;)V

    .line 34
    iget-object p0, p0, Lorg/javia/arity/Compiler;->simpleCodeGen:Lorg/javia/arity/SimpleCodeGen;

    invoke-virtual {p0}, Lorg/javia/arity/SimpleCodeGen;->getFun()Lorg/javia/arity/CompiledFunction;

    move-result-object p0

    return-object p0
.end method

.method compileWithName(Lorg/javia/arity/Symbols;Ljava/lang/String;)Lorg/javia/arity/FunctionAndName;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    .line 72
    new-instance v0, Lorg/javia/arity/FunctionAndName;

    invoke-virtual {p0, p1, p2}, Lorg/javia/arity/Compiler;->compile(Lorg/javia/arity/Symbols;Ljava/lang/String;)Lorg/javia/arity/Function;

    move-result-object p1

    iget-object p0, p0, Lorg/javia/arity/Compiler;->decl:Lorg/javia/arity/Declaration;

    iget-object p0, p0, Lorg/javia/arity/Declaration;->name:Ljava/lang/String;

    invoke-direct {v0, p1, p0}, Lorg/javia/arity/FunctionAndName;-><init>(Lorg/javia/arity/Function;Ljava/lang/String;)V

    return-object v0
.end method
