.class public Lcn/nubia/camera/am/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/am/c$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcn/nubia/camera/am/c$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcn/nubia/camera/am/c;->b:Lcn/nubia/camera/am/c$a;

    .line 26
    iput-object p1, p0, Lcn/nubia/camera/am/c;->a:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/am/c;)Landroid/app/Activity;
    .locals 0

    .line 13
    iget-object p0, p0, Lcn/nubia/camera/am/c;->a:Landroid/app/Activity;

    return-object p0
.end method

.method private a(I)V
    .locals 3

    .line 36
    iget-object v0, p0, Lcn/nubia/camera/am/c;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 37
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "firstapp"

    .line 38
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 39
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/am/c;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcn/nubia/camera/am/c;->a(I)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/am/c;)Lcn/nubia/camera/am/c$a;
    .locals 0

    .line 13
    iget-object p0, p0, Lcn/nubia/camera/am/c;->b:Lcn/nubia/camera/am/c$a;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 47
    new-instance v0, Lcn/nubia/camera/am/a$a;

    iget-object v1, p0, Lcn/nubia/camera/am/c;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcn/nubia/camera/am/a$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f03d8

    .line 48
    invoke-virtual {v0, v1}, Lcn/nubia/camera/am/a$a;->c(I)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    const v1, 0x7f0f002f

    .line 49
    invoke-virtual {v0, v1}, Lcn/nubia/camera/am/a$a;->a(I)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    .line 50
    invoke-static {}, Lcn/nubia/camera/ba/a;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0f0033

    goto :goto_0

    :cond_0
    const v1, 0x7f0f0032

    :goto_0
    invoke-virtual {v0, v1}, Lcn/nubia/camera/am/a$a;->d(I)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    const v1, 0x7f0f0030

    new-instance v2, Lcn/nubia/camera/am/c$2;

    invoke-direct {v2, p0}, Lcn/nubia/camera/am/c$2;-><init>(Lcn/nubia/camera/am/c;)V

    .line 51
    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/am/a$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    const v1, 0x7f0f0031

    new-instance v2, Lcn/nubia/camera/am/c$1;

    invoke-direct {v2, p0}, Lcn/nubia/camera/am/c$1;-><init>(Lcn/nubia/camera/am/c;)V

    .line 61
    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/am/a$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcn/nubia/camera/am/a$a;->a()Lcn/nubia/camera/am/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/am/a;->show()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcn/nubia/camera/am/c;->b()V

    return-void
.end method
