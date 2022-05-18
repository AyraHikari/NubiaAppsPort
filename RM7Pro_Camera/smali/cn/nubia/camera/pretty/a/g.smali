.class public Lcn/nubia/camera/pretty/a/g;
.super Lcn/nubia/camera/k/ah;
.source "SourceFile"


# instance fields
.field private b:Lcn/nubia/b/n;

.field private c:Lcn/nubia/b/k;

.field private d:Lcn/nubia/camera/k/t;

.field private e:Lcn/nubia/b/k;

.field private f:Lcn/nubia/camera/k/t;

.field private g:Lcn/nubia/camera/k/p;

.field private h:Lcn/nubia/b/k;

.field private i:Lcn/nubia/camera/k/t;

.field private j:Lcn/nubia/b/k;

.field private k:Lcn/nubia/camera/k/t;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;-><init>()V

    .line 43
    new-instance v0, Lcn/nubia/camera/k/t;

    invoke-direct {v0}, Lcn/nubia/camera/k/t;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/pretty/a/g;->d:Lcn/nubia/camera/k/t;

    .line 46
    new-instance v0, Lcn/nubia/camera/k/t;

    invoke-direct {v0}, Lcn/nubia/camera/k/t;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/pretty/a/g;->f:Lcn/nubia/camera/k/t;

    .line 50
    new-instance v0, Lcn/nubia/camera/k/t;

    invoke-direct {v0}, Lcn/nubia/camera/k/t;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/pretty/a/g;->i:Lcn/nubia/camera/k/t;

    .line 52
    new-instance v0, Lcn/nubia/camera/k/t;

    invoke-direct {v0}, Lcn/nubia/camera/k/t;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/pretty/a/g;->k:Lcn/nubia/camera/k/t;

    return-void
.end method

.method private H()V
    .locals 8

    const-string v0, "PrettyBokehStreamController"

    const-string v1, "configZteSession"

    .line 139
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/a/g;->m()Lcn/nubia/camera/k/y;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v1

    .line 141
    invoke-virtual {v1}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object v5

    .line 142
    invoke-virtual {v1}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v6

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set previewSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pictureSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 147
    new-instance v0, Lcn/nubia/b/n;

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/a/g;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-direct {v0, v1, v2, v4}, Lcn/nubia/b/n;-><init>(Landroid/graphics/SurfaceTexture;II)V

    iput-object v0, p0, Lcn/nubia/camera/pretty/a/g;->b:Lcn/nubia/b/n;

    .line 148
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v0, Lcn/nubia/b/k;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v2

    const/16 v4, 0x100

    const/4 v7, 0x1

    invoke-direct {v0, v1, v2, v4, v7}, Lcn/nubia/b/k;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/camera/pretty/a/g;->c:Lcn/nubia/b/k;

    .line 151
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/g;->d:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/a/g;->o()Lcn/nubia/b/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/b/d;)V

    .line 152
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/g;->c:Lcn/nubia/b/k;

    iget-object v1, p0, Lcn/nubia/camera/pretty/a/g;->d:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/a/g;->w()Lcom/a/a/a/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/b/k;->a(Lcn/nubia/b/a/h$a;Landroid/os/Handler;)V

    .line 153
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/g;->c:Lcn/nubia/b/k;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v0, Lcn/nubia/b/k;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v2

    const v4, 0x20203859

    invoke-direct {v0, v1, v2, v4, v7}, Lcn/nubia/b/k;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/camera/pretty/a/g;->h:Lcn/nubia/b/k;

    .line 156
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/g;->i:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/a/g;->o()Lcn/nubia/b/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/b/d;)V

    .line 157
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/g;->h:Lcn/nubia/b/k;

    iget-object v1, p0, Lcn/nubia/camera/pretty/a/g;->i:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/a/g;->w()Lcom/a/a/a/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/b/k;->a(Lcn/nubia/b/a/h$a;Landroid/os/Handler;)V

    .line 158
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/g;->h:Lcn/nubia/b/k;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v0, Lcn/nubia/b/k;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v2

    const/16 v4, 0x23

    invoke-direct {v0, v1, v2, v4, v7}, Lcn/nubia/b/k;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/camera/pretty/a/g;->j:Lcn/nubia/b/k;

    .line 161
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/g;->k:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/a/g;->o()Lcn/nubia/b/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/b/d;)V

    .line 162
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/g;->j:Lcn/nubia/b/k;

    iget-object v1, p0, Lcn/nubia/camera/pretty/a/g;->k:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/a/g;->w()Lcom/a/a/a/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/b/k;->a(Lcn/nubia/b/a/h$a;Landroid/os/Handler;)V

    .line 163
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/g;->j:Lcn/nubia/b/k;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v2, p0, Lcn/nubia/camera/pretty/a/g;->g:Lcn/nubia/camera/k/p;

    iget-object v4, p0, Lcn/nubia/camera/pretty/a/g;->b:Lcn/nubia/b/n;

    const/high16 v7, 0x10000000

    invoke-interface/range {v2 .. v7}, Lcn/nubia/camera/k/p;->a(Ljava/util/ArrayList;Lcn/nubia/b/n;Landroid/util/Size;Landroid/util/Size;I)V

    return-void
.end method

.method private I()Z
    .locals 1

    .line 169
    invoke-static {}, Lcn/nubia/camera/ba/a;->C()Z

    move-result v0

    return v0
.end method

.method private e()V
    .locals 7

    .line 107
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/a/g;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object v4

    .line 109
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v5

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pictureSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; previewSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrettyBokehStreamController"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v0, Lcn/nubia/b/n;

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/a/g;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/b/n;-><init>(Landroid/graphics/SurfaceTexture;II)V

    iput-object v0, p0, Lcn/nubia/camera/pretty/a/g;->b:Lcn/nubia/b/n;

    .line 114
    new-instance v0, Lcn/nubia/b/k;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v2

    const/16 v3, 0x100

    const/4 v6, 0x1

    invoke-direct {v0, v1, v2, v3, v6}, Lcn/nubia/b/k;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/camera/pretty/a/g;->c:Lcn/nubia/b/k;

    .line 115
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/g;->d:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/a/g;->o()Lcn/nubia/b/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/b/d;)V

    .line 116
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/g;->c:Lcn/nubia/b/k;

    iget-object v1, p0, Lcn/nubia/camera/pretty/a/g;->d:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/a/g;->w()Lcom/a/a/a/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/b/k;->a(Lcn/nubia/b/a/h$a;Landroid/os/Handler;)V

    .line 118
    new-instance v0, Lcn/nubia/b/k;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v2

    const/16 v3, 0x23

    invoke-direct {v0, v1, v2, v3, v6}, Lcn/nubia/b/k;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/camera/pretty/a/g;->e:Lcn/nubia/b/k;

    .line 119
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/g;->f:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/a/g;->o()Lcn/nubia/b/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/b/d;)V

    .line 120
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/g;->e:Lcn/nubia/b/k;

    iget-object v1, p0, Lcn/nubia/camera/pretty/a/g;->f:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/a/g;->w()Lcom/a/a/a/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/b/k;->a(Lcn/nubia/b/a/h$a;Landroid/os/Handler;)V

    .line 121
    invoke-direct {p0}, Lcn/nubia/camera/pretty/a/g;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/g;->e:Lcn/nubia/b/k;

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/b/k;->a(Ljava/lang/String;)V

    .line 125
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 126
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/g;->b:Lcn/nubia/b/n;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/g;->c:Lcn/nubia/b/k;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/g;->e:Lcn/nubia/b/k;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/a/g;->l()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->G()I

    move-result v0

    if-nez v0, :cond_1

    .line 132
    iget-object v1, p0, Lcn/nubia/camera/pretty/a/g;->g:Lcn/nubia/camera/k/p;

    iget-object v3, p0, Lcn/nubia/camera/pretty/a/g;->b:Lcn/nubia/b/n;

    const v6, 0x800b

    invoke-interface/range {v1 .. v6}, Lcn/nubia/camera/k/p;->a(Ljava/util/ArrayList;Lcn/nubia/b/n;Landroid/util/Size;Landroid/util/Size;I)V

    goto :goto_0

    .line 134
    :cond_1
    iget-object v1, p0, Lcn/nubia/camera/pretty/a/g;->g:Lcn/nubia/camera/k/p;

    iget-object v3, p0, Lcn/nubia/camera/pretty/a/g;->b:Lcn/nubia/b/n;

    const v6, 0x800e

    invoke-interface/range {v1 .. v6}, Lcn/nubia/camera/k/p;->a(Ljava/util/ArrayList;Lcn/nubia/b/n;Landroid/util/Size;Landroid/util/Size;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Lcn/nubia/b/m;

    .line 93
    iget-object v2, p0, Lcn/nubia/camera/pretty/a/g;->b:Lcn/nubia/b/n;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/pretty/a/g;->a(I[Lcn/nubia/b/m;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V
    .locals 1

    .line 55
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Lcn/nubia/camera/k/ac;

    invoke-direct {v0, p1, p0}, Lcn/nubia/camera/k/ac;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V

    iput-object v0, p0, Lcn/nubia/camera/pretty/a/g;->g:Lcn/nubia/camera/k/p;

    goto :goto_0

    .line 58
    :cond_0
    new-instance v0, Lcn/nubia/camera/k/v;

    invoke-direct {v0, p1, p0}, Lcn/nubia/camera/k/v;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V

    iput-object v0, p0, Lcn/nubia/camera/pretty/a/g;->g:Lcn/nubia/camera/k/p;

    .line 60
    :goto_0
    invoke-super/range {p0 .. p5}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z
    .locals 7

    .line 83
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/g;->d:Lcn/nubia/camera/k/t;

    invoke-virtual {v0, p2}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/camera/k/o;)V

    .line 84
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/g;->i:Lcn/nubia/camera/k/t;

    invoke-virtual {v0, p3}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/camera/k/o;)V

    .line 85
    iget-object p3, p0, Lcn/nubia/camera/pretty/a/g;->k:Lcn/nubia/camera/k/t;

    invoke-virtual {p3, p4}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/camera/k/o;)V

    .line 86
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/g;->g:Lcn/nubia/camera/k/p;

    iget-object v5, p0, Lcn/nubia/camera/pretty/a/g;->c:Lcn/nubia/b/k;

    const/4 p3, 0x3

    new-array v6, p3, [Lcn/nubia/b/m;

    iget-object p3, p0, Lcn/nubia/camera/pretty/a/g;->h:Lcn/nubia/b/k;

    const/4 p4, 0x0

    aput-object p3, v6, p4

    iget-object p3, p0, Lcn/nubia/camera/pretty/a/g;->b:Lcn/nubia/b/n;

    const/4 p4, 0x1

    aput-object p3, v6, p4

    iget-object p3, p0, Lcn/nubia/camera/pretty/a/g;->j:Lcn/nubia/b/k;

    const/4 v1, 0x2

    aput-object p3, v6, v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    invoke-interface/range {v0 .. v6}, Lcn/nubia/camera/k/p;->a(ILcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;Lcn/nubia/b/k;[Lcn/nubia/b/m;)V

    const-string p1, "PrettyBokehStreamController"

    const-string p2, "takeZtePicture"

    .line 87
    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return p4
.end method

.method public a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z
    .locals 9

    .line 71
    iget-object v1, p0, Lcn/nubia/camera/pretty/a/g;->d:Lcn/nubia/camera/k/t;

    invoke-virtual {v1, p2}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/camera/k/o;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 73
    iget-object v3, p0, Lcn/nubia/camera/pretty/a/g;->f:Lcn/nubia/camera/k/t;

    invoke-virtual {v3, p3}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/camera/k/o;)V

    .line 74
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/g;->g:Lcn/nubia/camera/k/p;

    const/4 v3, 0x2

    iget-object v7, p0, Lcn/nubia/camera/pretty/a/g;->c:Lcn/nubia/b/k;

    new-array v8, v1, [Lcn/nubia/b/m;

    iget-object v4, p0, Lcn/nubia/camera/pretty/a/g;->e:Lcn/nubia/b/k;

    aput-object v4, v8, v2

    move-object v2, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    invoke-interface/range {v2 .. v8}, Lcn/nubia/camera/k/p;->a(ILcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;Lcn/nubia/b/k;[Lcn/nubia/b/m;)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/g;->g:Lcn/nubia/camera/k/p;

    const/4 v3, 0x2

    iget-object v7, p0, Lcn/nubia/camera/pretty/a/g;->c:Lcn/nubia/b/k;

    new-array v8, v2, [Lcn/nubia/b/m;

    move-object v2, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    invoke-interface/range {v2 .. v8}, Lcn/nubia/camera/k/p;->a(ILcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;Lcn/nubia/b/k;[Lcn/nubia/b/m;)V

    :goto_0
    return v1
.end method

.method public a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z
    .locals 8

    .line 65
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/g;->d:Lcn/nubia/camera/k/t;

    invoke-virtual {v0, p2}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/camera/k/o;)V

    .line 66
    iget-object v1, p0, Lcn/nubia/camera/pretty/a/g;->g:Lcn/nubia/camera/k/p;

    iget-object v6, p0, Lcn/nubia/camera/pretty/a/g;->c:Lcn/nubia/b/k;

    const/4 v0, 0x0

    new-array v7, v0, [Lcn/nubia/b/m;

    const/4 v2, 0x2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v1 .. v7}, Lcn/nubia/camera/k/p;->a(ILcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;Lcn/nubia/b/k;[Lcn/nubia/b/m;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected b()V
    .locals 1

    .line 98
    invoke-static {}, Lcn/nubia/camera/ba/a;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-direct {p0}, Lcn/nubia/camera/pretty/a/g;->H()V

    goto :goto_0

    .line 102
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/pretty/a/g;->e()V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 174
    invoke-super {p0}, Lcn/nubia/camera/k/ah;->c()V

    .line 175
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/g;->g:Lcn/nubia/camera/k/p;

    invoke-interface {v0}, Lcn/nubia/camera/k/p;->a()V

    return-void
.end method
