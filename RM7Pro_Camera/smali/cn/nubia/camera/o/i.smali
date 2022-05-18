.class public Lcn/nubia/camera/o/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/o/i$b;,
        Lcn/nubia/camera/o/i$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcn/nubia/camera/o/b;

.field private c:Lcn/nubia/camera/o/i$b;

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:I

.field private i:Landroid/os/Handler;

.field private j:Lcn/nubia/camera/o/i$a;

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcn/nubia/camera/o/i;->a:I

    .line 39
    iput v0, p0, Lcn/nubia/camera/o/i;->f:I

    .line 40
    iput-boolean v0, p0, Lcn/nubia/camera/o/i;->g:Z

    .line 41
    iput v0, p0, Lcn/nubia/camera/o/i;->h:I

    .line 42
    new-instance v0, Lcn/nubia/camera/o/i$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/o/i$1;-><init>(Lcn/nubia/camera/o/i;)V

    iput-object v0, p0, Lcn/nubia/camera/o/i;->i:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/o/i;I)I
    .locals 0

    .line 11
    iput p1, p0, Lcn/nubia/camera/o/i;->a:I

    return p1
.end method

.method static synthetic a(Lcn/nubia/camera/o/i;Lcn/nubia/camera/o/b;)Lcn/nubia/camera/o/b;
    .locals 0

    .line 11
    iput-object p1, p0, Lcn/nubia/camera/o/i;->b:Lcn/nubia/camera/o/b;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/o/i;)Lcn/nubia/camera/o/i$a;
    .locals 0

    .line 11
    iget-object p0, p0, Lcn/nubia/camera/o/i;->j:Lcn/nubia/camera/o/i$a;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/o/i;)Lcn/nubia/camera/o/b;
    .locals 0

    .line 11
    iget-object p0, p0, Lcn/nubia/camera/o/i;->b:Lcn/nubia/camera/o/b;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/camera/o/i;)Landroid/os/Handler;
    .locals 0

    .line 11
    iget-object p0, p0, Lcn/nubia/camera/o/i;->i:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/o/i;)I
    .locals 0

    .line 11
    iget p0, p0, Lcn/nubia/camera/o/i;->a:I

    return p0
.end method

.method static synthetic e(Lcn/nubia/camera/o/i;)I
    .locals 0

    .line 11
    iget p0, p0, Lcn/nubia/camera/o/i;->k:I

    return p0
.end method

.method static synthetic f(Lcn/nubia/camera/o/i;)Z
    .locals 0

    .line 11
    iget-boolean p0, p0, Lcn/nubia/camera/o/i;->g:Z

    return p0
.end method

.method static synthetic g(Lcn/nubia/camera/o/i;)I
    .locals 0

    .line 11
    iget p0, p0, Lcn/nubia/camera/o/i;->f:I

    return p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 92
    iget-object v0, p0, Lcn/nubia/camera/o/i;->b:Lcn/nubia/camera/o/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 96
    :cond_0
    iget v0, p0, Lcn/nubia/camera/o/i;->a:I

    return v0
.end method

.method public a(IIIIIZII)V
    .locals 11

    move-object v9, p0

    move v4, p3

    const-string v0, "ElectronicOjbect"

    const-string v1, "onShutterButtonClick"

    .line 103
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v2, v9, Lcn/nubia/camera/o/i;->b:Lcn/nubia/camera/o/b;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 105
    iget-object v0, v9, Lcn/nubia/camera/o/i;->j:Lcn/nubia/camera/o/i$a;

    if-eqz v0, :cond_0

    .line 106
    invoke-interface {v0, v3}, Lcn/nubia/camera/o/i$a;->b(I)V

    :cond_0
    return-void

    .line 110
    :cond_1
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, v9, Lcn/nubia/camera/o/i;->g:Z

    .line 112
    iput v4, v9, Lcn/nubia/camera/o/i;->k:I

    const/4 v1, -0x1

    if-ne v4, v1, :cond_2

    .line 114
    iput-boolean v3, v9, Lcn/nubia/camera/o/i;->g:Z

    .line 115
    iput v0, v9, Lcn/nubia/camera/o/i;->h:I

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    if-lt v4, v0, :cond_3

    add-int/lit8 v0, p4, 0xa

    mul-int/2addr v0, v4

    .line 117
    div-int/lit8 v0, v0, 0xa

    iput v0, v9, Lcn/nubia/camera/o/i;->k:I

    :cond_3
    :goto_0
    move v2, p1

    .line 120
    iput v2, v9, Lcn/nubia/camera/o/i;->d:I

    move v3, p2

    .line 121
    iput v3, v9, Lcn/nubia/camera/o/i;->e:I

    move/from16 v0, p7

    .line 122
    iput v0, v9, Lcn/nubia/camera/o/i;->f:I

    .line 123
    new-instance v10, Lcn/nubia/camera/o/i$b;

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcn/nubia/camera/o/i$b;-><init>(Lcn/nubia/camera/o/i;IIIIIZI)V

    iput-object v10, v9, Lcn/nubia/camera/o/i;->c:Lcn/nubia/camera/o/i$b;

    .line 125
    invoke-virtual {v10}, Lcn/nubia/camera/o/i$b;->start()V

    return-void
.end method

.method public a(Lcn/nubia/camera/o/i$a;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcn/nubia/camera/o/i;->j:Lcn/nubia/camera/o/i$a;

    return-void
.end method

.method public a([B)Z
    .locals 5

    .line 134
    iget v0, p0, Lcn/nubia/camera/o/i;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcn/nubia/camera/o/i;->b:Lcn/nubia/camera/o/b;

    if-nez v0, :cond_0

    goto :goto_1

    .line 137
    :cond_0
    invoke-virtual {v0, p1}, Lcn/nubia/camera/o/b;->a([B)I

    move-result p1

    .line 138
    iget-boolean v0, p0, Lcn/nubia/camera/o/i;->g:Z

    if-eqz v0, :cond_1

    .line 139
    iput p1, p0, Lcn/nubia/camera/o/i;->h:I

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/o/i;->i:Landroid/os/Handler;

    const/4 v2, 0x2

    int-to-float v3, p1

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    iget v4, p0, Lcn/nubia/camera/o/i;->k:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 142
    iget-object v2, p0, Lcn/nubia/camera/o/i;->i:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 145
    :goto_0
    iget v0, p0, Lcn/nubia/camera/o/i;->k:I

    if-lt p1, v0, :cond_2

    iget-boolean p1, p0, Lcn/nubia/camera/o/i;->g:Z

    if-eqz p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    :goto_1
    return v1
.end method

.method public b()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcn/nubia/camera/o/i;->b:Lcn/nubia/camera/o/b;

    if-nez v0, :cond_0

    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/o/i;->c:Lcn/nubia/camera/o/i$b;

    invoke-virtual {v0}, Lcn/nubia/camera/o/i$b;->a()V

    return-void
.end method

.method public c()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcn/nubia/camera/o/i;->b:Lcn/nubia/camera/o/b;

    if-nez v0, :cond_0

    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/o/i;->c:Lcn/nubia/camera/o/i$b;

    invoke-virtual {v0}, Lcn/nubia/camera/o/i$b;->b()V

    return-void
.end method

.method public d()I
    .locals 1

    .line 237
    iget v0, p0, Lcn/nubia/camera/o/i;->h:I

    return v0
.end method
