.class public abstract Lcom/hpplay/sdk/source/protocol/b/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected b:Ljava/io/BufferedReader;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 38
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/b/a/f;->b:Ljava/io/BufferedReader;

    .line 39
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method a([B)V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/f;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/b/a/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/protocol/b/a;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    .line 97
    if-nez v0, :cond_0

    .line 98
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad hex encoding"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    return-object v0
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 185
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 186
    return-void
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/a/f;->b:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 59
    :cond_0
    if-eqz p1, :cond_1

    .line 66
    :goto_0
    return-object p1

    .line 63
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing input"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/b/f;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Enter prime \'N\' (hex): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/hpplay/sdk/source/protocol/b/a/f;->h(Ljava/lang/String;)V

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t1 = select precomputed 256-bit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/hpplay/sdk/source/protocol/b/a/f;->h(Ljava/lang/String;)V

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t2 = select precomputed 512-bit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/hpplay/sdk/source/protocol/b/a/f;->h(Ljava/lang/String;)V

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t3 = select precomputed 768-bit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/hpplay/sdk/source/protocol/b/a/f;->h(Ljava/lang/String;)V

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t4 = select precomputed 1024-bit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/hpplay/sdk/source/protocol/b/a/f;->h(Ljava/lang/String;)V

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t5 = select precomputed 2048-bit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/hpplay/sdk/source/protocol/b/a/f;->h(Ljava/lang/String;)V

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t6 = enter prime \'N\' and generator \'g\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/hpplay/sdk/source/protocol/b/a/f;->h(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/b/a/f;->d()V

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Your choice [1]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/hpplay/sdk/source/protocol/b/a/f;->g(Ljava/lang/String;)V

    .line 128
    const-string v2, "1"

    invoke-virtual {p0, v2}, Lcom/hpplay/sdk/source/protocol/b/a/f;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 135
    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_1

    .line 166
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unknown choice"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :pswitch_0
    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    goto :goto_0

    :pswitch_1
    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v0

    goto :goto_0

    :pswitch_2
    const-string v4, "3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :pswitch_3
    const-string v4, "4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :pswitch_4
    const-string v4, "5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :pswitch_5
    const-string v4, "6"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    .line 138
    :pswitch_6
    sget-object v2, Lcom/hpplay/sdk/source/protocol/b/f;->a:Ljava/math/BigInteger;

    .line 139
    sget-object v1, Lcom/hpplay/sdk/source/protocol/b/f;->g:Ljava/math/BigInteger;

    .line 169
    :goto_1
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/b/a/f;->d()V

    .line 171
    if-eqz v0, :cond_1

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Selected prime \'N\' (hex): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/hpplay/sdk/source/protocol/b/a;->a(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/f;->h(Ljava/lang/String;)V

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Selected generator \'g\' (hex): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/hpplay/sdk/source/protocol/b/a;->a(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/f;->h(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/b/a/f;->d()V

    .line 177
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Enter hash algorithm \'H\' [SHA-1]: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/f;->g(Ljava/lang/String;)V

    .line 178
    const-string v0, "SHA-1"

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/f;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/b/a/f;->d()V

    .line 181
    new-instance v3, Lcom/hpplay/sdk/source/protocol/b/f;

    invoke-direct {v3, v2, v1, v0}, Lcom/hpplay/sdk/source/protocol/b/f;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;)V

    return-object v3

    .line 142
    :pswitch_7
    sget-object v2, Lcom/hpplay/sdk/source/protocol/b/f;->b:Ljava/math/BigInteger;

    .line 143
    sget-object v1, Lcom/hpplay/sdk/source/protocol/b/f;->g:Ljava/math/BigInteger;

    goto :goto_1

    .line 146
    :pswitch_8
    sget-object v2, Lcom/hpplay/sdk/source/protocol/b/f;->c:Ljava/math/BigInteger;

    .line 147
    sget-object v1, Lcom/hpplay/sdk/source/protocol/b/f;->g:Ljava/math/BigInteger;

    goto :goto_1

    .line 150
    :pswitch_9
    sget-object v2, Lcom/hpplay/sdk/source/protocol/b/f;->d:Ljava/math/BigInteger;

    .line 151
    sget-object v1, Lcom/hpplay/sdk/source/protocol/b/f;->g:Ljava/math/BigInteger;

    goto :goto_1

    .line 154
    :pswitch_a
    sget-object v2, Lcom/hpplay/sdk/source/protocol/b/f;->f:Ljava/math/BigInteger;

    .line 155
    sget-object v1, Lcom/hpplay/sdk/source/protocol/b/f;->g:Ljava/math/BigInteger;

    goto :goto_1

    .line 158
    :pswitch_b
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/b/a/f;->d()V

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Enter prime \'N\' (hex): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/f;->g(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/b/a/f;->c()Ljava/math/BigInteger;

    move-result-object v2

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Enter generator \'g\' (hex): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/f;->g(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/b/a/f;->c()Ljava/math/BigInteger;

    move-result-object v0

    move v5, v1

    move-object v1, v0

    move v0, v5

    .line 164
    goto/16 :goto_1

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method protected g(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 189
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method protected h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method i(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tComputed shared key \'S\' (hex): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/protocol/b/a/f;->h(Ljava/lang/String;)V

    .line 202
    return-void
.end method
