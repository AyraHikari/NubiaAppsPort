.class Lorg/javia/arity/Declaration;
.super Ljava/lang/Object;
.source "Declaration.java"


# static fields
.field private static final NO_ARGS:[Ljava/lang/String;


# instance fields
.field args:[Ljava/lang/String;

.field arity:I

.field expression:Ljava/lang/String;

.field name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 20
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/javia/arity/Declaration;->NO_ARGS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method parse(Ljava/lang/String;Lorg/javia/arity/Lexer;Lorg/javia/arity/DeclarationParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    const/16 v0, 0x3d

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 32
    iput-object p1, p0, Lorg/javia/arity/Declaration;->expression:Ljava/lang/String;

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lorg/javia/arity/Declaration;->name:Ljava/lang/String;

    .line 34
    sget-object p1, Lorg/javia/arity/Declaration;->NO_ARGS:[Ljava/lang/String;

    iput-object p1, p0, Lorg/javia/arity/Declaration;->args:[Ljava/lang/String;

    const/4 p1, -0x2

    .line 35
    iput p1, p0, Lorg/javia/arity/Declaration;->arity:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 37
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/javia/arity/Declaration;->expression:Ljava/lang/String;

    .line 39
    invoke-virtual {p2, v1, p3}, Lorg/javia/arity/Lexer;->scan(Ljava/lang/String;Lorg/javia/arity/TokenConsumer;)V

    .line 40
    iget-object p1, p3, Lorg/javia/arity/DeclarationParser;->name:Ljava/lang/String;

    iput-object p1, p0, Lorg/javia/arity/Declaration;->name:Ljava/lang/String;

    .line 41
    invoke-virtual {p3}, Lorg/javia/arity/DeclarationParser;->argNames()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/javia/arity/Declaration;->args:[Ljava/lang/String;

    .line 42
    iget p1, p3, Lorg/javia/arity/DeclarationParser;->arity:I

    iput p1, p0, Lorg/javia/arity/Declaration;->arity:I

    :goto_0
    return-void
.end method
