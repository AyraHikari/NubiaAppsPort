.class public Lcn/nubia/camera/z/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/z/f$a;,
        Lcn/nubia/camera/z/f$b;
    }
.end annotation


# static fields
.field private static i:J


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:I

.field private e:Lcn/nubia/camera/z/f$b;

.field private f:Lcn/nubia/camera/z/f$a;

.field private g:Lcn/nubia/camera/ad/a;

.field private h:Lcn/nubia/camera/d/a;

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcn/nubia/camera/ad/a;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 32
    iput-wide v0, p0, Lcn/nubia/camera/z/f;->a:J

    .line 33
    iput-wide v0, p0, Lcn/nubia/camera/z/f;->b:J

    .line 34
    iput-wide v0, p0, Lcn/nubia/camera/z/f;->c:J

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcn/nubia/camera/z/f;->d:I

    const/4 v1, 0x0

    .line 38
    iput-object v1, p0, Lcn/nubia/camera/z/f;->g:Lcn/nubia/camera/ad/a;

    .line 39
    iput-object v1, p0, Lcn/nubia/camera/z/f;->h:Lcn/nubia/camera/d/a;

    .line 41
    iput-boolean v0, p0, Lcn/nubia/camera/z/f;->j:Z

    .line 42
    iput-boolean v0, p0, Lcn/nubia/camera/z/f;->k:Z

    .line 52
    new-instance v0, Lcn/nubia/camera/z/f$a;

    invoke-direct {v0, p0, v1}, Lcn/nubia/camera/z/f$a;-><init>(Lcn/nubia/camera/z/f;Lcn/nubia/camera/z/f$1;)V

    iput-object v0, p0, Lcn/nubia/camera/z/f;->f:Lcn/nubia/camera/z/f$a;

    .line 53
    iput-object p1, p0, Lcn/nubia/camera/z/f;->g:Lcn/nubia/camera/ad/a;

    .line 54
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/z/f;->h:Lcn/nubia/camera/d/a;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/z/f;J)J
    .locals 0

    .line 18
    iput-wide p1, p0, Lcn/nubia/camera/z/f;->c:J

    return-wide p1
.end method

.method static synthetic a(Lcn/nubia/camera/z/f;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcn/nubia/camera/z/f;->j:Z

    return p0
.end method

.method static synthetic b(Lcn/nubia/camera/z/f;J)J
    .locals 0

    .line 18
    iput-wide p1, p0, Lcn/nubia/camera/z/f;->a:J

    return-wide p1
.end method

.method static synthetic b(Lcn/nubia/camera/z/f;)Lcn/nubia/camera/z/f$b;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/camera/z/f;->e:Lcn/nubia/camera/z/f$b;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/camera/z/f;)Z
    .locals 0

    .line 18
    invoke-direct {p0}, Lcn/nubia/camera/z/f;->h()Z

    move-result p0

    return p0
.end method

.method static synthetic d()J
    .locals 2

    .line 18
    sget-wide v0, Lcn/nubia/camera/z/f;->i:J

    return-wide v0
.end method

.method static synthetic d(Lcn/nubia/camera/z/f;)J
    .locals 2

    .line 18
    invoke-direct {p0}, Lcn/nubia/camera/z/f;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic e(Lcn/nubia/camera/z/f;)J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcn/nubia/camera/z/f;->c:J

    return-wide v0
.end method

.method private e()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 130
    sput-wide v0, Lcn/nubia/camera/z/f;->i:J

    .line 131
    iput-wide v0, p0, Lcn/nubia/camera/z/f;->a:J

    const/4 v2, 0x0

    .line 132
    iput v2, p0, Lcn/nubia/camera/z/f;->d:I

    .line 133
    iput-wide v0, p0, Lcn/nubia/camera/z/f;->c:J

    return-void
.end method

.method static synthetic f(Lcn/nubia/camera/z/f;)I
    .locals 0

    .line 18
    iget p0, p0, Lcn/nubia/camera/z/f;->d:I

    return p0
.end method

.method private f()J
    .locals 8

    .line 137
    iget-wide v0, p0, Lcn/nubia/camera/z/f;->b:J

    iget-wide v2, p0, Lcn/nubia/camera/z/f;->a:J

    sub-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    return-wide v6

    :cond_0
    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private g()V
    .locals 9

    .line 143
    iget-boolean v0, p0, Lcn/nubia/camera/z/f;->j:Z

    if-eqz v0, :cond_3

    .line 144
    iget-wide v0, p0, Lcn/nubia/camera/z/f;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x2

    const/4 v4, 0x1

    if-nez v0, :cond_1

    .line 145
    invoke-direct {p0}, Lcn/nubia/camera/z/f;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 146
    iget v0, p0, Lcn/nubia/camera/z/f;->d:I

    add-int/2addr v0, v4

    iput v0, p0, Lcn/nubia/camera/z/f;->d:I

    .line 147
    iget-boolean v2, p0, Lcn/nubia/camera/z/f;->k:Z

    if-nez v2, :cond_0

    if-le v0, v4, :cond_0

    .line 148
    iget-object v0, p0, Lcn/nubia/camera/z/f;->f:Lcn/nubia/camera/z/f$a;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/camera/z/f$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/z/f;->f:Lcn/nubia/camera/z/f$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/z/f$a;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 155
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/z/f;->f:Lcn/nubia/camera/z/f$a;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v0, v4, v5, v6}, Lcn/nubia/camera/z/f$a;->sendEmptyMessageDelayed(IJ)Z

    .line 157
    iget-wide v7, p0, Lcn/nubia/camera/z/f;->a:J

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcn/nubia/camera/z/f;->a:J

    .line 158
    iget v0, p0, Lcn/nubia/camera/z/f;->d:I

    if-nez v0, :cond_2

    .line 159
    iget-wide v7, p0, Lcn/nubia/camera/z/f;->b:J

    iput-wide v7, p0, Lcn/nubia/camera/z/f;->a:J

    .line 161
    :cond_2
    iget-wide v7, p0, Lcn/nubia/camera/z/f;->b:J

    cmp-long v2, v7, v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcn/nubia/camera/z/f;->a:J

    cmp-long v2, v2, v7

    if-nez v2, :cond_3

    add-int/2addr v0, v4

    .line 162
    iput v0, p0, Lcn/nubia/camera/z/f;->d:I

    .line 163
    iget-object v0, p0, Lcn/nubia/camera/z/f;->f:Lcn/nubia/camera/z/f$a;

    invoke-virtual {v0, v1, v5, v6}, Lcn/nubia/camera/z/f$a;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic g(Lcn/nubia/camera/z/f;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcn/nubia/camera/z/f;->g()V

    return-void
.end method

.method static synthetic h(Lcn/nubia/camera/z/f;)J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcn/nubia/camera/z/f;->b:J

    return-wide v0
.end method

.method private h()Z
    .locals 2

    .line 171
    iget-object v0, p0, Lcn/nubia/camera/z/f;->h:Lcn/nubia/camera/d/a;

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic i(Lcn/nubia/camera/z/f;)Lcn/nubia/camera/z/f$a;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/camera/z/f;->f:Lcn/nubia/camera/z/f$a;

    return-object p0
.end method

.method private i()V
    .locals 2

    .line 229
    iget-object v0, p0, Lcn/nubia/camera/z/f;->g:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/j/a;->b(I)V

    return-void
.end method

.method private j()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcn/nubia/camera/z/f;->g:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcn/nubia/j/a;->b(I)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 85
    iget v0, p0, Lcn/nubia/camera/z/f;->d:I

    return v0
.end method

.method public a(J)V
    .locals 0

    .line 69
    iput-wide p1, p0, Lcn/nubia/camera/z/f;->b:J

    return-void
.end method

.method public a(Lcn/nubia/camera/z/f$b;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcn/nubia/camera/z/f;->e:Lcn/nubia/camera/z/f$b;

    return-void
.end method

.method public b()Z
    .locals 4

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/camera/z/f;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Intervalometer"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-boolean v0, p0, Lcn/nubia/camera/z/f;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcn/nubia/camera/z/f;->j:Z

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcn/nubia/camera/z/f;->i:J

    .line 99
    iget-object v2, p0, Lcn/nubia/camera/z/f;->f:Lcn/nubia/camera/z/f$a;

    invoke-virtual {v2, v1}, Lcn/nubia/camera/z/f$a;->sendEmptyMessage(I)Z

    .line 101
    invoke-direct {p0}, Lcn/nubia/camera/z/f;->g()V

    .line 102
    invoke-direct {p0}, Lcn/nubia/camera/z/f;->i()V

    return v0
.end method

.method public c()Z
    .locals 3

    .line 107
    iget-boolean v0, p0, Lcn/nubia/camera/z/f;->j:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interval On\uff1a "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcn/nubia/camera/z/f;->j:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; can\'t stop."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Intervalometer"

    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 112
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/z/f;->j()V

    .line 114
    iput-boolean v1, p0, Lcn/nubia/camera/z/f;->j:Z

    .line 116
    invoke-direct {p0}, Lcn/nubia/camera/z/f;->e()V

    .line 117
    iget-object v0, p0, Lcn/nubia/camera/z/f;->f:Lcn/nubia/camera/z/f$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/z/f$a;->removeMessages(I)V

    .line 118
    iget-object v0, p0, Lcn/nubia/camera/z/f;->f:Lcn/nubia/camera/z/f$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/z/f$a;->removeMessages(I)V

    .line 119
    iget-object v0, p0, Lcn/nubia/camera/z/f;->f:Lcn/nubia/camera/z/f$a;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcn/nubia/camera/z/f$a;->removeMessages(I)V

    .line 121
    iget-object v0, p0, Lcn/nubia/camera/z/f;->e:Lcn/nubia/camera/z/f$b;

    if-eqz v0, :cond_1

    .line 122
    invoke-interface {v0}, Lcn/nubia/camera/z/f$b;->b()V

    :cond_1
    return v1
.end method
