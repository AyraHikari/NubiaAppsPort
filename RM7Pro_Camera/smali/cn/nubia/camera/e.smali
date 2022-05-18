.class public final Lcn/nubia/camera/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/d;


# instance fields
.field private final a:Landroid/app/Activity;

.field private b:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcn/nubia/camera/e;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcn/nubia/camera/e;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcn/nubia/camera/e;->b:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/camera/d$a;)V
    .locals 3

    .line 26
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling Fatal Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FatalErrorHandler"

    invoke-static {v2, v1, v0}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    iget-object v0, p0, Lcn/nubia/camera/e;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "mAlertDialog is showing"

    .line 30
    invoke-static {v2, p1}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 34
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/camera/d$a;->b()Z

    move-result v0

    .line 35
    iget-object v1, p0, Lcn/nubia/camera/e;->a:Landroid/app/Activity;

    const v2, 0x7f0f041a

    invoke-virtual {p1}, Lcn/nubia/camera/d$a;->a()I

    move-result p1

    invoke-static {v1, v2, p1, v0}, Lcn/nubia/camera/ba/a;->a(Landroid/app/Activity;IIZ)Lcn/nubia/camera/am/a;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/e;->b:Landroid/app/Dialog;

    .line 36
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
