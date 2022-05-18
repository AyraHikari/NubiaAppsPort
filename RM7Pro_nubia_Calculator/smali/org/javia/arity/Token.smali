.class Lorg/javia/arity/Token;
.super Ljava/lang/Object;
.source "Token.java"


# static fields
.field static final LEFT:I = 0x2

.field static final PREFIX:I = 0x1

.field static final RIGHT:I = 0x3

.field static final SUFIX:I = 0x4


# instance fields
.field arity:I

.field final assoc:I

.field final id:I

.field name:Ljava/lang/String;

.field position:I

.field final priority:I

.field value:D

.field final vmop:B


# direct methods
.method constructor <init>(IIII)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lorg/javia/arity/Token;->name:Ljava/lang/String;

    .line 38
    iput p1, p0, Lorg/javia/arity/Token;->id:I

    .line 39
    iput p2, p0, Lorg/javia/arity/Token;->priority:I

    .line 40
    iput p3, p0, Lorg/javia/arity/Token;->assoc:I

    int-to-byte p2, p4

    .line 41
    iput-byte p2, p0, Lorg/javia/arity/Token;->vmop:B

    const/16 p2, 0xb

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x3

    .line 42
    :goto_0
    iput p1, p0, Lorg/javia/arity/Token;->arity:I

    return-void
.end method


# virtual methods
.method public isDerivative()Z
    .locals 2

    .line 62
    iget-object v0, p0, Lorg/javia/arity/Token;->name:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/javia/arity/Token;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lorg/javia/arity/Token;->name:Ljava/lang/String;

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x27

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method setAlpha(Ljava/lang/String;)Lorg/javia/arity/Token;
    .locals 0

    .line 56
    iput-object p1, p0, Lorg/javia/arity/Token;->name:Ljava/lang/String;

    return-object p0
.end method

.method setPos(I)Lorg/javia/arity/Token;
    .locals 0

    .line 46
    iput p1, p0, Lorg/javia/arity/Token;->position:I

    return-object p0
.end method

.method setValue(D)Lorg/javia/arity/Token;
    .locals 0

    .line 51
    iput-wide p1, p0, Lorg/javia/arity/Token;->value:D

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 66
    iget v0, p0, Lorg/javia/arity/Token;->id:I

    packed-switch v0, :pswitch_data_0

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/javia/arity/Token;->id:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 70
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/javia/arity/Token;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/javia/arity/Token;->arity:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 72
    :pswitch_1
    iget-object p0, p0, Lorg/javia/arity/Token;->name:Ljava/lang/String;

    return-object p0

    .line 68
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/javia/arity/Token;->value:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
