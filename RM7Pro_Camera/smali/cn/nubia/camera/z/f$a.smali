.class Lcn/nubia/camera/z/f$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/z/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/z/f;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/z/f;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcn/nubia/camera/z/f$a;->a:Lcn/nubia/camera/z/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/z/f;Lcn/nubia/camera/z/f$1;)V
    .locals 0

    .line 174
    invoke-direct {p0, p1}, Lcn/nubia/camera/z/f$a;-><init>(Lcn/nubia/camera/z/f;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 177
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "Intervalometer"

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_9

    const/4 v4, 0x1

    if-eq v0, v4, :cond_4

    const/4 v5, 0x2

    if-eq v0, v5, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "handleMeassage finish"

    .line 208
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcn/nubia/camera/z/f$a;->a:Lcn/nubia/camera/z/f;

    invoke-static {v0}, Lcn/nubia/camera/z/f;->a(Lcn/nubia/camera/z/f;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "when interval is not on, not call interval finish"

    .line 211
    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 214
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/z/f$a;->a:Lcn/nubia/camera/z/f;

    invoke-static {v0}, Lcn/nubia/camera/z/f;->b(Lcn/nubia/camera/z/f;)Lcn/nubia/camera/z/f$b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 215
    iget-object v0, p0, Lcn/nubia/camera/z/f$a;->a:Lcn/nubia/camera/z/f;

    invoke-static {v0}, Lcn/nubia/camera/z/f;->b(Lcn/nubia/camera/z/f;)Lcn/nubia/camera/z/f$b;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/camera/z/f$b;->a()V

    .line 216
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/z/f$a;->a:Lcn/nubia/camera/z/f;

    invoke-static {v0, v2, v3}, Lcn/nubia/camera/z/f;->b(Lcn/nubia/camera/z/f;J)J

    .line 217
    iget-object v0, p0, Lcn/nubia/camera/z/f$a;->a:Lcn/nubia/camera/z/f;

    invoke-static {v0}, Lcn/nubia/camera/z/f;->h(Lcn/nubia/camera/z/f;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_b

    .line 218
    :cond_3
    iget-object p1, p0, Lcn/nubia/camera/z/f$a;->a:Lcn/nubia/camera/z/f;

    invoke-static {p1}, Lcn/nubia/camera/z/f;->i(Lcn/nubia/camera/z/f;)Lcn/nubia/camera/z/f$a;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcn/nubia/camera/z/f$a;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 190
    :cond_4
    iget-object p1, p0, Lcn/nubia/camera/z/f$a;->a:Lcn/nubia/camera/z/f;

    invoke-static {p1}, Lcn/nubia/camera/z/f;->a(Lcn/nubia/camera/z/f;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "when interval is not on, not call interval run"

    .line 191
    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 194
    :cond_5
    iget-object p1, p0, Lcn/nubia/camera/z/f$a;->a:Lcn/nubia/camera/z/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcn/nubia/camera/z/f;->d()J

    move-result-wide v5

    sub-long/2addr v0, v5

    invoke-static {p1, v0, v1}, Lcn/nubia/camera/z/f;->a(Lcn/nubia/camera/z/f;J)J

    .line 195
    iget-object p1, p0, Lcn/nubia/camera/z/f$a;->a:Lcn/nubia/camera/z/f;

    invoke-static {p1}, Lcn/nubia/camera/z/f;->b(Lcn/nubia/camera/z/f;)Lcn/nubia/camera/z/f$b;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcn/nubia/camera/z/f$a;->a:Lcn/nubia/camera/z/f;

    invoke-static {p1}, Lcn/nubia/camera/z/f;->c(Lcn/nubia/camera/z/f;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 196
    iget-object p1, p0, Lcn/nubia/camera/z/f$a;->a:Lcn/nubia/camera/z/f;

    invoke-static {p1}, Lcn/nubia/camera/z/f;->b(Lcn/nubia/camera/z/f;)Lcn/nubia/camera/z/f$b;

    move-result-object v5

    iget-object p1, p0, Lcn/nubia/camera/z/f$a;->a:Lcn/nubia/camera/z/f;

    invoke-static {p1}, Lcn/nubia/camera/z/f;->d(Lcn/nubia/camera/z/f;)J

    move-result-wide v6

    iget-object p1, p0, Lcn/nubia/camera/z/f$a;->a:Lcn/nubia/camera/z/f;

    invoke-static {p1}, Lcn/nubia/camera/z/f;->e(Lcn/nubia/camera/z/f;)J

    move-result-wide v8

    iget-object p1, p0, Lcn/nubia/camera/z/f$a;->a:Lcn/nubia/camera/z/f;

    invoke-static {p1}, Lcn/nubia/camera/z/f;->f(Lcn/nubia/camera/z/f;)I

    move-result v10

    invoke-interface/range {v5 .. v10}, Lcn/nubia/camera/z/f$b;->a(JJI)V

    .line 198
    :cond_6
    iget-object p1, p0, Lcn/nubia/camera/z/f$a;->a:Lcn/nubia/camera/z/f;

    invoke-static {p1}, Lcn/nubia/camera/z/f;->c(Lcn/nubia/camera/z/f;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 199
    iget-object p1, p0, Lcn/nubia/camera/z/f$a;->a:Lcn/nubia/camera/z/f;

    invoke-static {p1}, Lcn/nubia/camera/z/f;->g(Lcn/nubia/camera/z/f;)V

    goto :goto_0

    .line 200
    :cond_7
    iget-object p1, p0, Lcn/nubia/camera/z/f$a;->a:Lcn/nubia/camera/z/f;

    invoke-static {p1}, Lcn/nubia/camera/z/f;->h(Lcn/nubia/camera/z/f;)J

    move-result-wide v0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_8

    .line 201
    iget-object p1, p0, Lcn/nubia/camera/z/f$a;->a:Lcn/nubia/camera/z/f;

    invoke-static {p1}, Lcn/nubia/camera/z/f;->i(Lcn/nubia/camera/z/f;)Lcn/nubia/camera/z/f$a;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v4, v0, v1}, Lcn/nubia/camera/z/f$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 203
    :cond_8
    iget-object p1, p0, Lcn/nubia/camera/z/f$a;->a:Lcn/nubia/camera/z/f;

    invoke-static {p1}, Lcn/nubia/camera/z/f;->h(Lcn/nubia/camera/z/f;)J

    move-result-wide v0

    cmp-long p1, v0, v2

    if-nez p1, :cond_b

    .line 204
    iget-object p1, p0, Lcn/nubia/camera/z/f$a;->a:Lcn/nubia/camera/z/f;

    invoke-static {p1}, Lcn/nubia/camera/z/f;->i(Lcn/nubia/camera/z/f;)Lcn/nubia/camera/z/f$a;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcn/nubia/camera/z/f$a;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 180
    :cond_9
    iget-object p1, p0, Lcn/nubia/camera/z/f$a;->a:Lcn/nubia/camera/z/f;

    invoke-static {p1}, Lcn/nubia/camera/z/f;->a(Lcn/nubia/camera/z/f;)Z

    move-result p1

    if-nez p1, :cond_a

    const-string p1, "when interval is not on, not call interval start"

    .line 181
    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 184
    :cond_a
    iget-object p1, p0, Lcn/nubia/camera/z/f$a;->a:Lcn/nubia/camera/z/f;

    invoke-static {p1}, Lcn/nubia/camera/z/f;->b(Lcn/nubia/camera/z/f;)Lcn/nubia/camera/z/f$b;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 185
    iget-object p1, p0, Lcn/nubia/camera/z/f$a;->a:Lcn/nubia/camera/z/f;

    invoke-static {p1}, Lcn/nubia/camera/z/f;->b(Lcn/nubia/camera/z/f;)Lcn/nubia/camera/z/f$b;

    move-result-object p1

    invoke-interface {p1, v2, v3}, Lcn/nubia/camera/z/f$b;->a(J)V

    :cond_b
    :goto_0
    return-void
.end method
