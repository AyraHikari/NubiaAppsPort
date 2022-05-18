.class public Lcn/nubia/camera/ax/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/ax/a$a;
    }
.end annotation


# static fields
.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;


# instance fields
.field private a:Lcn/nubia/camera/ad/a;

.field private b:Lcn/nubia/camera/ax/j;

.field private c:Lcn/nubia/camera/ax/b;

.field private d:Lcn/nubia/camera/ax/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 56
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/camera/ax/a;->e:Ljava/lang/String;

    .line 57
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/camera/ax/a;->f:Ljava/lang/String;

    .line 58
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lez v0, :cond_0

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    sput-object v0, Lcn/nubia/camera/ax/a;->g:Ljava/lang/String;

    .line 59
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    sput-object v0, Lcn/nubia/camera/ax/a;->h:Ljava/lang/String;

    .line 60
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    sput-object v0, Lcn/nubia/camera/ax/a;->i:Ljava/lang/String;

    .line 61
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_3

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    :cond_3
    sput-object v2, Lcn/nubia/camera/ax/a;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/ax/j;Lcn/nubia/camera/ax/b;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcn/nubia/camera/ax/a;->b:Lcn/nubia/camera/ax/j;

    .line 77
    iput-object p1, p0, Lcn/nubia/camera/ax/a;->a:Lcn/nubia/camera/ad/a;

    .line 78
    iput-object p2, p0, Lcn/nubia/camera/ax/a;->b:Lcn/nubia/camera/ax/j;

    .line 79
    iput-object p3, p0, Lcn/nubia/camera/ax/a;->c:Lcn/nubia/camera/ax/b;

    return-void
.end method

.method private a(Lcn/nubia/camera/af/b;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcn/nubia/camera/ax/a;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->s()Lcn/nubia/camera/aw/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/camera/aw/b;->b(Lcn/nubia/camera/af/b;)V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/camera/ax/a$a;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcn/nubia/camera/ax/a;->d:Lcn/nubia/camera/ax/a$a;

    return-void
.end method

.method public a(I)Z
    .locals 5

    .line 97
    iget-object v0, p0, Lcn/nubia/camera/ax/a;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "autotest"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 159
    :pswitch_0
    sget-object p1, Lcn/nubia/camera/ax/a;->j:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 160
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object p1

    const-string v0, "Sub Back Camera3 nor found"

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/ba/f;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 161
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/ax/a;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object p1

    new-instance v0, Lcn/nubia/camera/af/b;

    sget-object v2, Lcn/nubia/camera/ax/a;->j:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/af/b;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 162
    new-instance p1, Lcn/nubia/camera/af/b;

    sget-object v0, Lcn/nubia/camera/ax/a;->j:Ljava/lang/String;

    invoke-direct {p1, v0, v3}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/nubia/camera/ax/a;->a(Lcn/nubia/camera/af/b;)V

    goto/16 :goto_0

    .line 152
    :pswitch_1
    sget-object p1, Lcn/nubia/camera/ax/a;->i:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 153
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object p1

    const-string v0, "Sub Back Camera2 nor found"

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/ba/f;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 154
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/ax/a;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object p1

    new-instance v0, Lcn/nubia/camera/af/b;

    sget-object v2, Lcn/nubia/camera/ax/a;->i:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/af/b;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 155
    new-instance p1, Lcn/nubia/camera/af/b;

    sget-object v0, Lcn/nubia/camera/ax/a;->i:Ljava/lang/String;

    invoke-direct {p1, v0, v3}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/nubia/camera/ax/a;->a(Lcn/nubia/camera/af/b;)V

    goto/16 :goto_0

    :pswitch_2
    new-array p1, v1, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 118
    new-instance v0, Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v3, v2}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    aput-object v0, p1, v2

    .line 119
    iget-object v0, p0, Lcn/nubia/camera/ax/a;->b:Lcn/nubia/camera/ax/j;

    invoke-virtual {v0}, Lcn/nubia/camera/ax/j;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->g()Lcn/nubia/camera/k/ad;

    move-result-object v0

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v2, p1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 120
    iget-object p1, p0, Lcn/nubia/camera/ax/a;->c:Lcn/nubia/camera/ax/b;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcn/nubia/camera/ax/b;->a(I)V

    .line 121
    iget-object p1, p0, Lcn/nubia/camera/ax/a;->b:Lcn/nubia/camera/ax/j;

    invoke-virtual {p1}, Lcn/nubia/camera/ax/j;->k()V

    goto/16 :goto_0

    .line 145
    :pswitch_3
    sget-object p1, Lcn/nubia/camera/ax/a;->h:Ljava/lang/String;

    if-nez p1, :cond_2

    .line 146
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object p1

    const-string v0, "Sub front camera not found"

    invoke-virtual {p1, v0, v2}, Lcn/nubia/camera/ba/f;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 147
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/ax/a;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object p1

    new-instance v0, Lcn/nubia/camera/af/b;

    sget-object v2, Lcn/nubia/camera/ax/a;->h:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/af/b;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 148
    new-instance p1, Lcn/nubia/camera/af/b;

    sget-object v0, Lcn/nubia/camera/ax/a;->h:Ljava/lang/String;

    invoke-direct {p1, v0, v3}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/nubia/camera/ax/a;->a(Lcn/nubia/camera/af/b;)V

    goto/16 :goto_0

    .line 171
    :pswitch_4
    iget-object p1, p0, Lcn/nubia/camera/ax/a;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 166
    :pswitch_5
    iget-object p1, p0, Lcn/nubia/camera/ax/a;->d:Lcn/nubia/camera/ax/a$a;

    if-eqz p1, :cond_6

    .line 167
    invoke-interface {p1}, Lcn/nubia/camera/ax/a$a;->a()V

    goto/16 :goto_0

    .line 138
    :pswitch_6
    sget-object p1, Lcn/nubia/camera/ax/a;->f:Ljava/lang/String;

    if-nez p1, :cond_3

    .line 139
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object p1

    const-string v0, "Main front camera not found"

    invoke-virtual {p1, v0, v2}, Lcn/nubia/camera/ba/f;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 140
    :cond_3
    iget-object p1, p0, Lcn/nubia/camera/ax/a;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object p1

    new-instance v0, Lcn/nubia/camera/af/b;

    sget-object v2, Lcn/nubia/camera/ax/a;->f:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/af/b;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 141
    new-instance p1, Lcn/nubia/camera/af/b;

    sget-object v0, Lcn/nubia/camera/ax/a;->f:Ljava/lang/String;

    invoke-direct {p1, v0, v3}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/nubia/camera/ax/a;->a(Lcn/nubia/camera/af/b;)V

    goto/16 :goto_0

    .line 131
    :pswitch_7
    sget-object p1, Lcn/nubia/camera/ax/a;->g:Ljava/lang/String;

    if-nez p1, :cond_4

    .line 132
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object p1

    const-string v0, "Sub back camera not found"

    invoke-virtual {p1, v0, v2}, Lcn/nubia/camera/ba/f;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 133
    :cond_4
    iget-object p1, p0, Lcn/nubia/camera/ax/a;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object p1

    new-instance v0, Lcn/nubia/camera/af/b;

    sget-object v2, Lcn/nubia/camera/ax/a;->g:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/af/b;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 134
    new-instance p1, Lcn/nubia/camera/af/b;

    sget-object v0, Lcn/nubia/camera/ax/a;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v3}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/nubia/camera/ax/a;->a(Lcn/nubia/camera/af/b;)V

    goto :goto_0

    .line 124
    :pswitch_8
    sget-object p1, Lcn/nubia/camera/ax/a;->e:Ljava/lang/String;

    if-nez p1, :cond_5

    .line 125
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object p1

    const-string v0, "Main back camera not found"

    invoke-virtual {p1, v0, v2}, Lcn/nubia/camera/ba/f;->a(Ljava/lang/String;I)V

    .line 126
    :cond_5
    iget-object p1, p0, Lcn/nubia/camera/ax/a;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object p1

    new-instance v0, Lcn/nubia/camera/af/b;

    sget-object v2, Lcn/nubia/camera/ax/a;->e:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/af/b;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 127
    new-instance p1, Lcn/nubia/camera/af/b;

    sget-object v0, Lcn/nubia/camera/ax/a;->e:Ljava/lang/String;

    invoke-direct {p1, v0, v3}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/nubia/camera/ax/a;->a(Lcn/nubia/camera/af/b;)V

    goto :goto_0

    .line 113
    :pswitch_9
    iget-object p1, p0, Lcn/nubia/camera/ax/a;->c:Lcn/nubia/camera/ax/b;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/ax/b;->a(I)V

    .line 114
    iget-object p1, p0, Lcn/nubia/camera/ax/a;->b:Lcn/nubia/camera/ax/j;

    invoke-virtual {p1}, Lcn/nubia/camera/ax/j;->k()V

    goto :goto_0

    .line 109
    :pswitch_a
    iget-object p1, p0, Lcn/nubia/camera/ax/a;->c:Lcn/nubia/camera/ax/b;

    invoke-virtual {p1, v1}, Lcn/nubia/camera/ax/b;->a(I)V

    .line 110
    iget-object p1, p0, Lcn/nubia/camera/ax/a;->b:Lcn/nubia/camera/ax/j;

    invoke-virtual {p1}, Lcn/nubia/camera/ax/j;->k()V

    goto :goto_0

    .line 100
    :pswitch_b
    iget-object p1, p0, Lcn/nubia/camera/ax/a;->c:Lcn/nubia/camera/ax/b;

    invoke-virtual {p1, v2}, Lcn/nubia/camera/ax/b;->a(I)V

    .line 101
    iget-object p1, p0, Lcn/nubia/camera/ax/a;->b:Lcn/nubia/camera/ax/j;

    invoke-virtual {p1}, Lcn/nubia/camera/ax/j;->k()V

    .line 103
    iget-object p1, p0, Lcn/nubia/camera/ax/a;->d:Lcn/nubia/camera/ax/a$a;

    if-eqz p1, :cond_6

    .line 104
    iget-object p1, p0, Lcn/nubia/camera/ax/a;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/a/a;

    check-cast p1, Lcn/nubia/camera/a/a;

    invoke-virtual {p1}, Lcn/nubia/camera/a/a;->w()Lcn/nubia/camera/an/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/an/a;->e()Landroid/graphics/Rect;

    move-result-object p1

    .line 105
    iget-object v2, p0, Lcn/nubia/camera/ax/a;->d:Lcn/nubia/camera/ax/a$a;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    div-int/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, p1

    div-int/2addr v4, v0

    invoke-interface {v2, v3, v4}, Lcn/nubia/camera/ax/a$a;->a(II)V

    :cond_6
    :goto_0
    return v1

    :cond_7
    return v2

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
