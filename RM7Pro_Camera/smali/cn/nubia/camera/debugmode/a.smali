.class public Lcn/nubia/camera/debugmode/a;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/debugmode/a$b;,
        Lcn/nubia/camera/debugmode/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcn/nubia/camera/debugmode/NubiaDebugItem$a;

.field private c:Lcom/android/preference/c;

.field private d:Landroid/widget/ListView;

.field private e:[Lcn/nubia/camera/debugmode/a$b;

.field private f:Lcn/nubia/camera/debugmode/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcn/nubia/camera/debugmode/a;->a:Landroid/content/Context;

    .line 20
    iput-object v0, p0, Lcn/nubia/camera/debugmode/a;->b:Lcn/nubia/camera/debugmode/NubiaDebugItem$a;

    .line 21
    iput-object v0, p0, Lcn/nubia/camera/debugmode/a;->c:Lcom/android/preference/c;

    .line 27
    iput-object p1, p0, Lcn/nubia/camera/debugmode/a;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/debugmode/a;)Lcom/android/preference/c;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/camera/debugmode/a;->c:Lcom/android/preference/c;

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 69
    iget-object v0, p0, Lcn/nubia/camera/debugmode/a;->d:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0900d9

    .line 72
    invoke-virtual {p0, v0}, Lcn/nubia/camera/debugmode/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcn/nubia/camera/debugmode/a;->d:Landroid/widget/ListView;

    .line 73
    iget-object v0, p0, Lcn/nubia/camera/debugmode/a;->e:[Lcn/nubia/camera/debugmode/a$b;

    if-eqz v0, :cond_1

    .line 74
    new-instance v0, Lcn/nubia/camera/debugmode/a$a;

    iget-object v1, p0, Lcn/nubia/camera/debugmode/a;->e:[Lcn/nubia/camera/debugmode/a$b;

    iget-object v2, p0, Lcn/nubia/camera/debugmode/a;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcn/nubia/camera/debugmode/a$a;-><init>(Lcn/nubia/camera/debugmode/a;[Lcn/nubia/camera/debugmode/a$b;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/debugmode/a;->f:Lcn/nubia/camera/debugmode/a$a;

    .line 75
    iget-object v1, p0, Lcn/nubia/camera/debugmode/a;->d:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/debugmode/a;)Lcn/nubia/camera/debugmode/NubiaDebugItem$a;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/camera/debugmode/a;->b:Lcn/nubia/camera/debugmode/NubiaDebugItem$a;

    return-object p0
.end method


# virtual methods
.method public a(Lcn/nubia/camera/debugmode/NubiaDebugItem$a;)Lcn/nubia/camera/debugmode/a;
    .locals 0

    .line 56
    iput-object p1, p0, Lcn/nubia/camera/debugmode/a;->b:Lcn/nubia/camera/debugmode/NubiaDebugItem$a;

    return-object p0
.end method

.method public a(Lcom/android/preference/c;)Lcn/nubia/camera/debugmode/a;
    .locals 0

    .line 41
    iput-object p1, p0, Lcn/nubia/camera/debugmode/a;->c:Lcom/android/preference/c;

    return-object p0
.end method

.method public a([Lcn/nubia/camera/debugmode/a$b;)Lcn/nubia/camera/debugmode/a;
    .locals 2

    .line 46
    iput-object p1, p0, Lcn/nubia/camera/debugmode/a;->e:[Lcn/nubia/camera/debugmode/a$b;

    .line 47
    iget-object p1, p0, Lcn/nubia/camera/debugmode/a;->d:Landroid/widget/ListView;

    if-eqz p1, :cond_0

    .line 48
    new-instance p1, Lcn/nubia/camera/debugmode/a$a;

    iget-object v0, p0, Lcn/nubia/camera/debugmode/a;->e:[Lcn/nubia/camera/debugmode/a$b;

    iget-object v1, p0, Lcn/nubia/camera/debugmode/a;->a:Landroid/content/Context;

    invoke-direct {p1, p0, v0, v1}, Lcn/nubia/camera/debugmode/a$a;-><init>(Lcn/nubia/camera/debugmode/a;[Lcn/nubia/camera/debugmode/a$b;Landroid/content/Context;)V

    iput-object p1, p0, Lcn/nubia/camera/debugmode/a;->f:Lcn/nubia/camera/debugmode/a$a;

    .line 49
    iget-object v0, p0, Lcn/nubia/camera/debugmode/a;->d:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    iget-object p1, p0, Lcn/nubia/camera/debugmode/a;->f:Lcn/nubia/camera/debugmode/a$a;

    invoke-virtual {p1}, Lcn/nubia/camera/debugmode/a$a;->notifyDataSetChanged()V

    :cond_0
    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 62
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0044

    .line 63
    invoke-virtual {p0, p1}, Lcn/nubia/camera/debugmode/a;->setContentView(I)V

    const/4 p1, 0x1

    .line 64
    invoke-virtual {p0, p1}, Lcn/nubia/camera/debugmode/a;->setCanceledOnTouchOutside(Z)V

    .line 65
    invoke-direct {p0}, Lcn/nubia/camera/debugmode/a;->a()V

    return-void
.end method
