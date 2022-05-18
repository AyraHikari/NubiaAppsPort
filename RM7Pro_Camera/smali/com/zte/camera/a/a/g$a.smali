.class Lcom/zte/camera/a/a/g$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/camera/a/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/zte/camera/a/a/g;


# direct methods
.method public constructor <init>(Lcom/zte/camera/a/a/g;Landroid/os/Looper;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    .line 105
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 110
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 111
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_12

    const/16 v4, 0x9

    const/4 v5, 0x0

    if-eq p1, v4, :cond_e

    const/4 v4, 0x5

    if-eq p1, v0, :cond_d

    const/4 v6, 0x4

    if-eq p1, v6, :cond_c

    if-eq p1, v4, :cond_7

    const/4 v4, 0x6

    if-eq p1, v4, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    goto/16 :goto_6

    .line 239
    :cond_0
    invoke-static {}, Lcom/zte/camera/a/a/g;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EXCEPTION_FORCE_RELEASE release"

    invoke-static {p1, v0}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object p1, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {p1}, Lcom/zte/camera/a/a/g;->k(Lcom/zte/camera/a/a/g;)V

    goto/16 :goto_6

    .line 184
    :cond_1
    invoke-static {}, Lcom/zte/camera/a/a/g;->b()Ljava/lang/String;

    move-result-object p1

    const-string v5, "retry export!"

    invoke-static {p1, v5}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object p1, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {p1}, Lcom/zte/camera/a/a/g;->l(Lcom/zte/camera/a/a/g;)Lcom/zte/camera/a/a/f;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 186
    iget-object p1, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {p1}, Lcom/zte/camera/a/a/g;->l(Lcom/zte/camera/a/a/g;)Lcom/zte/camera/a/a/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zte/camera/a/a/f;->b()Z

    move-result p1

    if-nez p1, :cond_2

    .line 187
    iget-object p1, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v4, v0, v1}, Lcom/zte/camera/a/a/g;->a(IJ)V

    goto/16 :goto_6

    .line 189
    :cond_2
    iget-object p1, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-virtual {p1}, Lcom/zte/camera/a/a/g;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 191
    iget-object v4, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {v4}, Lcom/zte/camera/a/a/g;->m(Lcom/zte/camera/a/a/g;)I

    .line 192
    iget-object v4, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {v4}, Lcom/zte/camera/a/a/g;->c(Lcom/zte/camera/a/a/g;)I

    move-result v4

    :goto_0
    iget-object v5, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {v5}, Lcom/zte/camera/a/a/g;->b(Lcom/zte/camera/a/a/g;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 193
    iget-object p1, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {p1}, Lcom/zte/camera/a/a/g;->b(Lcom/zte/camera/a/a/g;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 194
    invoke-static {}, Lcom/zte/camera/a/a/g;->b()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vlog path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/zte/camera/d/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v5, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {v5, p1, v3}, Lcom/zte/camera/a/a/g;->a(Lcom/zte/camera/a/a/g;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-eqz p1, :cond_16

    .line 201
    iget-object p1, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-virtual {p1, v0, v1, v2}, Lcom/zte/camera/a/a/g;->a(IJ)V

    goto/16 :goto_6

    .line 206
    :cond_5
    iget-object p1, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {p1}, Lcom/zte/camera/a/a/g;->n(Lcom/zte/camera/a/a/g;)V

    goto/16 :goto_6

    .line 210
    :cond_6
    invoke-static {}, Lcom/zte/camera/a/a/g;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Muxer is null EXCEPTION_FORCE_RELEASE release"

    invoke-static {p1, v0}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object p1, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {p1}, Lcom/zte/camera/a/a/g;->k(Lcom/zte/camera/a/a/g;)V

    goto/16 :goto_6

    .line 152
    :cond_7
    iget-object p1, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {p1}, Lcom/zte/camera/a/a/g;->d(Lcom/zte/camera/a/a/g;)Lcom/zte/camera/a/a/a;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 153
    iget-object p1, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {p1}, Lcom/zte/camera/a/a/g;->d(Lcom/zte/camera/a/a/g;)Lcom/zte/camera/a/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zte/camera/a/a/a;->f()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {p1}, Lcom/zte/camera/a/a/g;->d(Lcom/zte/camera/a/a/g;)Lcom/zte/camera/a/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zte/camera/a/a/a;->e()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 154
    iget-object p1, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {p1}, Lcom/zte/camera/a/a/g;->e(Lcom/zte/camera/a/a/g;)V

    .line 155
    iget-object p1, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {p1}, Lcom/zte/camera/a/a/g;->f(Lcom/zte/camera/a/a/g;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 156
    iget-object p1, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {p1}, Lcom/zte/camera/a/a/g;->g(Lcom/zte/camera/a/a/g;)V

    .line 157
    iget-object p1, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {p1}, Lcom/zte/camera/a/a/g;->a(Lcom/zte/camera/a/a/g;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zte/camera/ui/b/c/d;->a(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/zte/camera/ui/b/c/d;->e(I)I

    .line 159
    iget-object p1, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {p1}, Lcom/zte/camera/a/a/g;->h(Lcom/zte/camera/a/a/g;)V

    .line 160
    iget-object p1, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {p1}, Lcom/zte/camera/a/a/g;->i(Lcom/zte/camera/a/a/g;)Lcom/zte/camera/a/a/g$b;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 161
    iget-object p1, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {p1}, Lcom/zte/camera/a/a/g;->i(Lcom/zte/camera/a/a/g;)Lcom/zte/camera/a/a/g$b;

    move-result-object p1

    iget-object v0, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {v0}, Lcom/zte/camera/a/a/g;->j(Lcom/zte/camera/a/a/g;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/zte/camera/a/a/g$b;->a(Landroid/net/Uri;)V

    goto :goto_2

    .line 164
    :cond_8
    invoke-static {}, Lcom/zte/camera/a/a/g;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RELEASE_VLOG_EXPORT has some video error"

    invoke-static {p1, v0}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object p1, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {p1, v3}, Lcom/zte/camera/a/a/g;->a(Lcom/zte/camera/a/a/g;Z)V

    .line 166
    iget-object p1, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {p1}, Lcom/zte/camera/a/a/g;->i(Lcom/zte/camera/a/a/g;)Lcom/zte/camera/a/a/g$b;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 167
    iget-object p1, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {p1}, Lcom/zte/camera/a/a/g;->i(Lcom/zte/camera/a/a/g;)Lcom/zte/camera/a/a/g$b;

    move-result-object p1

    invoke-interface {p1, v5}, Lcom/zte/camera/a/a/g$b;->a(Landroid/net/Uri;)V

    .line 170
    :cond_9
    :goto_2
    invoke-static {}, Lcom/zte/camera/a/a/g;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "release OK"

    invoke-static {p1, v0}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 172
    :cond_a
    invoke-static {}, Lcom/zte/camera/a/a/g;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "release LATER"

    invoke-static {p1, v0}, Lcom/zte/camera/d/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object p1, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {p1}, Lcom/zte/camera/a/a/g;->d(Lcom/zte/camera/a/a/g;)Lcom/zte/camera/a/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zte/camera/a/a/a;->e()Z

    move-result p1

    goto/16 :goto_6

    .line 178
    :cond_b
    invoke-static {}, Lcom/zte/camera/a/a/g;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "audio process is null force"

    invoke-static {p1, v0}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object p1, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {p1}, Lcom/zte/camera/a/a/g;->k(Lcom/zte/camera/a/a/g;)V

    goto/16 :goto_6

    .line 147
    :cond_c
    invoke-static {}, Lcom/zte/camera/a/a/g;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "finish audio track!"

    invoke-static {p1, v0}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object p1, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-virtual {p1, v4, v1, v2}, Lcom/zte/camera/a/a/g;->a(IJ)V

    goto/16 :goto_6

    .line 141
    :cond_d
    invoke-static {}, Lcom/zte/camera/a/a/g;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "finish video track!"

    invoke-static {p1, v0}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object p1, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {p1}, Lcom/zte/camera/a/a/g;->d(Lcom/zte/camera/a/a/g;)Lcom/zte/camera/a/a/a;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/zte/camera/a/a/a;->a(Z)V

    .line 143
    iget-object p1, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-virtual {p1, v4, v1, v2}, Lcom/zte/camera/a/a/g;->a(IJ)V

    goto/16 :goto_6

    .line 216
    :cond_e
    iget-object p1, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {p1}, Lcom/zte/camera/a/a/g;->d(Lcom/zte/camera/a/a/g;)Lcom/zte/camera/a/a/a;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 217
    iget-object p1, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {p1}, Lcom/zte/camera/a/a/g;->d(Lcom/zte/camera/a/a/g;)Lcom/zte/camera/a/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zte/camera/a/a/a;->g()V

    .line 219
    :cond_f
    iget-object p1, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {p1}, Lcom/zte/camera/a/a/g;->e(Lcom/zte/camera/a/a/g;)V

    .line 220
    iget-object p1, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {p1}, Lcom/zte/camera/a/a/g;->f(Lcom/zte/camera/a/a/g;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 221
    iget-object p1, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {p1}, Lcom/zte/camera/a/a/g;->g(Lcom/zte/camera/a/a/g;)V

    .line 222
    iget-object p1, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {p1}, Lcom/zte/camera/a/a/g;->a(Lcom/zte/camera/a/a/g;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zte/camera/ui/b/c/d;->a(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/zte/camera/ui/b/c/d;->e(I)I

    .line 224
    iget-object p1, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {p1}, Lcom/zte/camera/a/a/g;->h(Lcom/zte/camera/a/a/g;)V

    .line 225
    iget-object p1, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {p1}, Lcom/zte/camera/a/a/g;->i(Lcom/zte/camera/a/a/g;)Lcom/zte/camera/a/a/g$b;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 226
    iget-object p1, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {p1}, Lcom/zte/camera/a/a/g;->i(Lcom/zte/camera/a/a/g;)Lcom/zte/camera/a/a/g$b;

    move-result-object p1

    iget-object v0, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {v0}, Lcom/zte/camera/a/a/g;->j(Lcom/zte/camera/a/a/g;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/zte/camera/a/a/g$b;->a(Landroid/net/Uri;)V

    goto :goto_3

    .line 229
    :cond_10
    invoke-static {}, Lcom/zte/camera/a/a/g;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VIDEO_FINISH_AUDIO_EXCEPTION_RELEASE has some video error"

    invoke-static {p1, v0}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object p1, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {p1, v3}, Lcom/zte/camera/a/a/g;->a(Lcom/zte/camera/a/a/g;Z)V

    .line 231
    iget-object p1, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {p1}, Lcom/zte/camera/a/a/g;->i(Lcom/zte/camera/a/a/g;)Lcom/zte/camera/a/a/g$b;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 232
    iget-object p1, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {p1}, Lcom/zte/camera/a/a/g;->i(Lcom/zte/camera/a/a/g;)Lcom/zte/camera/a/a/g$b;

    move-result-object p1

    invoke-interface {p1, v5}, Lcom/zte/camera/a/a/g$b;->a(Landroid/net/Uri;)V

    .line 235
    :cond_11
    :goto_3
    invoke-static {}, Lcom/zte/camera/a/a/g;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VIDEO_FINISH_AUDIO_EXCEPTION_RELEASE release"

    invoke-static {p1, v0}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 113
    :cond_12
    invoke-static {}, Lcom/zte/camera/a/a/g;->b()Ljava/lang/String;

    move-result-object p1

    const-string v4, "start vlog export!"

    invoke-static {p1, v4}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object p1, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {p1}, Lcom/zte/camera/a/a/g;->a(Lcom/zte/camera/a/a/g;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zte/camera/ui/b/c/d;->a(Ljava/lang/String;)I

    move-result p1

    .line 115
    iget-object v4, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-virtual {v4, p1}, Lcom/zte/camera/a/a/g;->a(I)Z

    move-result p1

    if-nez p1, :cond_13

    return-void

    :cond_13
    const/4 p1, 0x0

    move v4, p1

    move v5, v4

    .line 121
    :goto_4
    iget-object v6, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {v6}, Lcom/zte/camera/a/a/g;->b(Lcom/zte/camera/a/a/g;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_15

    .line 122
    iget-object v6, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {v6}, Lcom/zte/camera/a/a/g;->b(Lcom/zte/camera/a/a/g;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 123
    invoke-static {}, Lcom/zte/camera/a/a/g;->b()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " start vlog path: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/zte/camera/d/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v7, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {v7, v6, v5}, Lcom/zte/camera/a/a/g;->a(Lcom/zte/camera/a/a/g;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_14

    .line 127
    iget-object v3, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {v3, v4}, Lcom/zte/camera/a/a/g;->a(Lcom/zte/camera/a/a/g;I)I

    .line 128
    invoke-static {}, Lcom/zte/camera/a/a/g;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "vlog count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-static {v5}, Lcom/zte/camera/a/a/g;->c(Lcom/zte/camera/a/a/g;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, p1

    goto :goto_5

    :cond_14
    add-int/lit8 v4, v4, 0x1

    move v5, v3

    goto :goto_4

    :cond_15
    :goto_5
    if-eqz v3, :cond_16

    .line 136
    iget-object p1, p0, Lcom/zte/camera/a/a/g$a;->a:Lcom/zte/camera/a/a/g;

    invoke-virtual {p1, v0, v1, v2}, Lcom/zte/camera/a/a/g;->a(IJ)V

    :cond_16
    :goto_6
    return-void
.end method
