.class Lorg/javia/arity/RPN;
.super Lorg/javia/arity/TokenConsumer;
.source "RPN.java"


# instance fields
.field consumer:Lorg/javia/arity/TokenConsumer;

.field exception:Lorg/javia/arity/SyntaxException;

.field prevTokenId:I

.field stack:Ljava/util/Stack;


# direct methods
.method constructor <init>(Lorg/javia/arity/SyntaxException;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Lorg/javia/arity/TokenConsumer;-><init>()V

    .line 29
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/javia/arity/RPN;->stack:Ljava/util/Stack;

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lorg/javia/arity/RPN;->prevTokenId:I

    .line 35
    iput-object p1, p0, Lorg/javia/arity/RPN;->exception:Lorg/javia/arity/SyntaxException;

    return-void
.end method

.method static final isOperand(I)Z
    .locals 1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0x11

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private popHigher(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Lorg/javia/arity/RPN;->top()Lorg/javia/arity/Token;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 55
    iget v1, v0, Lorg/javia/arity/Token;->priority:I

    if-lt v1, p1, :cond_0

    .line 56
    iget-object v1, p0, Lorg/javia/arity/RPN;->consumer:Lorg/javia/arity/TokenConsumer;

    invoke-virtual {v1, v0}, Lorg/javia/arity/TokenConsumer;->push(Lorg/javia/arity/Token;)V

    .line 58
    iget-object v0, p0, Lorg/javia/arity/RPN;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 59
    invoke-direct {p0}, Lorg/javia/arity/RPN;->top()Lorg/javia/arity/Token;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private top()Lorg/javia/arity/Token;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/javia/arity/RPN;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/javia/arity/RPN;->stack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/javia/arity/Token;

    :goto_0
    return-object p0
.end method


# virtual methods
.method push(Lorg/javia/arity/Token;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    .line 73
    iget v0, p1, Lorg/javia/arity/Token;->priority:I

    .line 74
    iget v1, p1, Lorg/javia/arity/Token;->id:I

    const/16 v2, 0xb

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    .line 128
    :pswitch_0
    iget v2, p1, Lorg/javia/arity/Token;->assoc:I

    if-ne v2, v3, :cond_9

    .line 129
    iget v0, p0, Lorg/javia/arity/RPN;->prevTokenId:I

    invoke-static {v0}, Lorg/javia/arity/RPN;->isOperand(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 130
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_MUL:Lorg/javia/arity/Token;

    invoke-virtual {p0, v0}, Lorg/javia/arity/RPN;->push(Lorg/javia/arity/Token;)V

    goto/16 :goto_2

    .line 119
    :pswitch_1
    sget-object v1, Lorg/javia/arity/Lexer;->TOK_RPAREN:Lorg/javia/arity/Token;

    .line 120
    iget v0, p1, Lorg/javia/arity/Token;->position:I

    iput v0, v1, Lorg/javia/arity/Token;->position:I

    .line 122
    :cond_0
    invoke-virtual {p0, v1}, Lorg/javia/arity/RPN;->push(Lorg/javia/arity/Token;)V

    .line 123
    invoke-direct {p0}, Lorg/javia/arity/RPN;->top()Lorg/javia/arity/Token;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 85
    :pswitch_2
    iget v1, p0, Lorg/javia/arity/RPN;->prevTokenId:I

    if-ne v1, v2, :cond_1

    .line 86
    invoke-direct {p0}, Lorg/javia/arity/RPN;->top()Lorg/javia/arity/Token;

    move-result-object v1

    iget v4, v1, Lorg/javia/arity/Token;->arity:I

    sub-int/2addr v4, v3

    iput v4, v1, Lorg/javia/arity/Token;->arity:I

    goto :goto_0

    .line 87
    :cond_1
    iget v1, p0, Lorg/javia/arity/RPN;->prevTokenId:I

    invoke-static {v1}, Lorg/javia/arity/RPN;->isOperand(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 91
    :goto_0
    invoke-direct {p0, v0}, Lorg/javia/arity/RPN;->popHigher(I)V

    .line 92
    invoke-direct {p0}, Lorg/javia/arity/RPN;->top()Lorg/javia/arity/Token;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 94
    iget v1, v0, Lorg/javia/arity/Token;->id:I

    if-ne v1, v2, :cond_2

    .line 95
    iget-object v1, p0, Lorg/javia/arity/RPN;->consumer:Lorg/javia/arity/TokenConsumer;

    invoke-virtual {v1, v0}, Lorg/javia/arity/TokenConsumer;->push(Lorg/javia/arity/Token;)V

    goto :goto_1

    .line 96
    :cond_2
    sget-object v1, Lorg/javia/arity/Lexer;->TOK_LPAREN:Lorg/javia/arity/Token;

    if-ne v0, v1, :cond_3

    .line 99
    :goto_1
    iget-object v0, p0, Lorg/javia/arity/RPN;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto/16 :goto_4

    .line 97
    :cond_3
    iget-object p0, p0, Lorg/javia/arity/RPN;->exception:Lorg/javia/arity/SyntaxException;

    iget p1, p1, Lorg/javia/arity/Token;->position:I

    const-string v0, "expected LPAREN or CALL"

    invoke-virtual {p0, v0, p1}, Lorg/javia/arity/SyntaxException;->set(Ljava/lang/String;I)Lorg/javia/arity/SyntaxException;

    move-result-object p0

    throw p0

    .line 88
    :cond_4
    iget-object p0, p0, Lorg/javia/arity/RPN;->exception:Lorg/javia/arity/SyntaxException;

    iget p1, p1, Lorg/javia/arity/Token;->position:I

    const-string v0, "unexpected ) or END"

    invoke-virtual {p0, v0, p1}, Lorg/javia/arity/SyntaxException;->set(Ljava/lang/String;I)Lorg/javia/arity/SyntaxException;

    move-result-object p0

    throw p0

    .line 105
    :pswitch_3
    iget v1, p0, Lorg/javia/arity/RPN;->prevTokenId:I

    invoke-static {v1}, Lorg/javia/arity/RPN;->isOperand(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 108
    invoke-direct {p0, v0}, Lorg/javia/arity/RPN;->popHigher(I)V

    .line 109
    invoke-direct {p0}, Lorg/javia/arity/RPN;->top()Lorg/javia/arity/Token;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 110
    iget v1, v0, Lorg/javia/arity/Token;->id:I

    if-ne v1, v2, :cond_5

    .line 113
    iget v1, v0, Lorg/javia/arity/Token;->arity:I

    add-int/2addr v1, v3

    iput v1, v0, Lorg/javia/arity/Token;->arity:I

    goto :goto_4

    .line 111
    :cond_5
    iget-object p0, p0, Lorg/javia/arity/RPN;->exception:Lorg/javia/arity/SyntaxException;

    iget p1, p1, Lorg/javia/arity/Token;->position:I

    const-string v0, "COMMA not inside CALL"

    invoke-virtual {p0, v0, p1}, Lorg/javia/arity/SyntaxException;->set(Ljava/lang/String;I)Lorg/javia/arity/SyntaxException;

    move-result-object p0

    throw p0

    .line 106
    :cond_6
    iget-object p0, p0, Lorg/javia/arity/RPN;->exception:Lorg/javia/arity/SyntaxException;

    iget p1, p1, Lorg/javia/arity/Token;->position:I

    const-string v0, "misplaced COMMA"

    invoke-virtual {p0, v0, p1}, Lorg/javia/arity/SyntaxException;->set(Ljava/lang/String;I)Lorg/javia/arity/SyntaxException;

    move-result-object p0

    throw p0

    .line 78
    :pswitch_4
    iget v0, p0, Lorg/javia/arity/RPN;->prevTokenId:I

    invoke-static {v0}, Lorg/javia/arity/RPN;->isOperand(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 79
    sget-object v0, Lorg/javia/arity/Lexer;->TOK_MUL:Lorg/javia/arity/Token;

    invoke-virtual {p0, v0}, Lorg/javia/arity/RPN;->push(Lorg/javia/arity/Token;)V

    .line 81
    :cond_7
    iget-object v0, p0, Lorg/javia/arity/RPN;->consumer:Lorg/javia/arity/TokenConsumer;

    invoke-virtual {v0, p1}, Lorg/javia/arity/TokenConsumer;->push(Lorg/javia/arity/Token;)V

    goto :goto_4

    .line 132
    :cond_8
    :goto_2
    iget-object v0, p0, Lorg/javia/arity/RPN;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 135
    :cond_9
    iget v2, p0, Lorg/javia/arity/RPN;->prevTokenId:I

    invoke-static {v2}, Lorg/javia/arity/RPN;->isOperand(I)Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v0, 0x2

    if-ne v1, v0, :cond_a

    .line 138
    sget-object p1, Lorg/javia/arity/Lexer;->TOK_UMIN:Lorg/javia/arity/Token;

    .line 139
    iget-object v0, p0, Lorg/javia/arity/RPN;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_a
    if-ne v1, v3, :cond_b

    return-void

    .line 145
    :cond_b
    iget-object p0, p0, Lorg/javia/arity/RPN;->exception:Lorg/javia/arity/SyntaxException;

    iget p1, p1, Lorg/javia/arity/Token;->position:I

    const-string v0, "operator without operand"

    invoke-virtual {p0, v0, p1}, Lorg/javia/arity/SyntaxException;->set(Ljava/lang/String;I)Lorg/javia/arity/SyntaxException;

    move-result-object p0

    throw p0

    .line 147
    :cond_c
    iget v1, p1, Lorg/javia/arity/Token;->assoc:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_d

    goto :goto_3

    :cond_d
    const/4 v3, 0x0

    :goto_3
    add-int/2addr v0, v3

    invoke-direct {p0, v0}, Lorg/javia/arity/RPN;->popHigher(I)V

    .line 148
    iget-object v0, p0, Lorg/javia/arity/RPN;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_e
    :goto_4
    iget p1, p1, Lorg/javia/arity/Token;->id:I

    iput p1, p0, Lorg/javia/arity/RPN;->prevTokenId:I

    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method setConsumer(Lorg/javia/arity/TokenConsumer;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lorg/javia/arity/RPN;->consumer:Lorg/javia/arity/TokenConsumer;

    return-void
.end method

.method start()V
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/javia/arity/RPN;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->removeAllElements()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lorg/javia/arity/RPN;->prevTokenId:I

    .line 46
    iget-object p0, p0, Lorg/javia/arity/RPN;->consumer:Lorg/javia/arity/TokenConsumer;

    invoke-virtual {p0}, Lorg/javia/arity/TokenConsumer;->start()V

    return-void
.end method
