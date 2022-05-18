.class public Lcn/nubia/camera/specification/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static c:Ljava/lang/String; = "com.android.camera.specification"


# instance fields
.field private a:Landroid/content/Context;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcn/nubia/camera/specification/a;->a:Landroid/content/Context;

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcn/nubia/camera/specification/a;->b:I

    .line 23
    iput-object p1, p0, Lcn/nubia/camera/specification/a;->a:Landroid/content/Context;

    .line 24
    iput p2, p0, Lcn/nubia/camera/specification/a;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 33
    iget-object v0, p0, Lcn/nubia/camera/specification/a;->a:Landroid/content/Context;

    const-string v1, "SpecificationListener"

    if-nez v0, :cond_0

    const-string v0, "mContext is null."

    .line 34
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 37
    :cond_0
    iget v0, p0, Lcn/nubia/camera/specification/a;->b:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    const-string v0, "mTypeValue is -1."

    .line 38
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 41
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 42
    iget v1, p0, Lcn/nubia/camera/specification/a;->b:I

    const-string v2, "Specification"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 43
    sget-object v1, Lcn/nubia/camera/specification/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    iget-object v1, p0, Lcn/nubia/camera/specification/a;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 45
    invoke-static {}, Lcn/nubia/camera/trackclinet/a;->a()Lcn/nubia/camera/trackclinet/a;

    move-result-object v0

    const-string v1, "com.android.camera"

    const-string v2, "camera_launch_help"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/trackclinet/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 29
    invoke-virtual {p0}, Lcn/nubia/camera/specification/a;->a()V

    return-void
.end method
