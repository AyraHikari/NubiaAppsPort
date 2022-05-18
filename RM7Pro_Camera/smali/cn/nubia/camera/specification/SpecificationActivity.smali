.class public Lcn/nubia/camera/specification/SpecificationActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(I)Landroid/app/Fragment;
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFragmentByType type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpecificationActivity"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {p1}, Lcn/nubia/camera/af/a;->a(I)Lcn/nubia/camera/af/a;

    move-result-object p1

    .line 58
    sget-object v0, Lcn/nubia/camera/specification/SpecificationActivity$1;->a:[I

    invoke-virtual {p1}, Lcn/nubia/camera/af/a;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 93
    :pswitch_0
    new-instance p1, Lcn/nubia/g/h;

    invoke-direct {p1}, Lcn/nubia/g/h;-><init>()V

    goto :goto_0

    .line 90
    :pswitch_1
    new-instance p1, Lcn/nubia/g/g;

    invoke-direct {p1}, Lcn/nubia/g/g;-><init>()V

    goto :goto_0

    .line 87
    :pswitch_2
    new-instance p1, Lcn/nubia/g/d;

    invoke-direct {p1}, Lcn/nubia/g/d;-><init>()V

    goto :goto_0

    .line 84
    :pswitch_3
    new-instance p1, Lcn/nubia/g/o;

    invoke-direct {p1}, Lcn/nubia/g/o;-><init>()V

    goto :goto_0

    .line 81
    :pswitch_4
    new-instance p1, Lcn/nubia/g/m;

    invoke-direct {p1}, Lcn/nubia/g/m;-><init>()V

    goto :goto_0

    .line 78
    :pswitch_5
    new-instance p1, Lcn/nubia/g/j;

    invoke-direct {p1}, Lcn/nubia/g/j;-><init>()V

    goto :goto_0

    .line 75
    :pswitch_6
    new-instance p1, Lcn/nubia/g/b;

    invoke-direct {p1}, Lcn/nubia/g/b;-><init>()V

    goto :goto_0

    .line 72
    :pswitch_7
    new-instance p1, Lcn/nubia/g/c;

    invoke-direct {p1}, Lcn/nubia/g/c;-><init>()V

    goto :goto_0

    .line 69
    :pswitch_8
    new-instance p1, Lcn/nubia/g/l;

    invoke-direct {p1}, Lcn/nubia/g/l;-><init>()V

    goto :goto_0

    .line 66
    :pswitch_9
    new-instance p1, Lcn/nubia/g/k;

    invoke-direct {p1}, Lcn/nubia/g/k;-><init>()V

    goto :goto_0

    .line 63
    :pswitch_a
    new-instance p1, Lcn/nubia/g/i;

    invoke-direct {p1}, Lcn/nubia/g/i;-><init>()V

    goto :goto_0

    .line 60
    :pswitch_b
    new-instance p1, Lcn/nubia/g/e;

    invoke-direct {p1}, Lcn/nubia/g/e;-><init>()V

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method private a()V
    .locals 3

    .line 41
    invoke-virtual {p0}, Lcn/nubia/camera/specification/SpecificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Specification"

    const/4 v2, -0x1

    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 43
    invoke-virtual {p0}, Lcn/nubia/camera/specification/SpecificationActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 44
    invoke-direct {p0, v0}, Lcn/nubia/camera/specification/SpecificationActivity;->a(I)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fragment is null, type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpecificationActivity"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p0}, Lcn/nubia/camera/specification/SpecificationActivity;->finish()V

    return-void

    :cond_0
    const v0, 0x7f0902de

    .line 50
    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 51
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00b0

    .line 36
    invoke-virtual {p0, p1}, Lcn/nubia/camera/specification/SpecificationActivity;->setContentView(I)V

    .line 37
    invoke-direct {p0}, Lcn/nubia/camera/specification/SpecificationActivity;->a()V

    return-void
.end method
