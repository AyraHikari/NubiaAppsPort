.class Lcn/nubia/camera/extendedUI/d$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/extendedUI/d;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/extendedUI/d;


# direct methods
.method constructor <init>(Lcn/nubia/camera/extendedUI/d;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcn/nubia/camera/extendedUI/d$5;->a:Lcn/nubia/camera/extendedUI/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 317
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 318
    iget-object p1, p0, Lcn/nubia/camera/extendedUI/d$5;->a:Lcn/nubia/camera/extendedUI/d;

    invoke-static {p1}, Lcn/nubia/camera/extendedUI/d;->n(Lcn/nubia/camera/extendedUI/d;)Lcom/android/preference/IconListPreference;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Lcom/android/preference/IconListPreference;->d(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcn/nubia/camera/extendedUI/d;->e(Lcn/nubia/camera/extendedUI/d;I)V

    .line 319
    iget-object p1, p0, Lcn/nubia/camera/extendedUI/d$5;->a:Lcn/nubia/camera/extendedUI/d;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/camera/extendedUI/d;->a(Lcn/nubia/camera/extendedUI/d;Z)Z

    return-void
.end method
