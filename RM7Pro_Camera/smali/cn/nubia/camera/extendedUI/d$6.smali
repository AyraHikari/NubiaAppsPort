.class Lcn/nubia/camera/extendedUI/d$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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

    .line 322
    iput-object p1, p0, Lcn/nubia/camera/extendedUI/d$6;->a:Lcn/nubia/camera/extendedUI/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 325
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 326
    iget-object p1, p0, Lcn/nubia/camera/extendedUI/d$6;->a:Lcn/nubia/camera/extendedUI/d;

    invoke-static {p1}, Lcn/nubia/camera/extendedUI/d;->o(Lcn/nubia/camera/extendedUI/d;)Lcom/android/preference/IconListPreference;

    move-result-object p2

    const-string p3, "off"

    invoke-virtual {p2, p3}, Lcom/android/preference/IconListPreference;->d(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2}, Lcn/nubia/camera/extendedUI/d;->f(Lcn/nubia/camera/extendedUI/d;I)V

    .line 327
    iget-object p1, p0, Lcn/nubia/camera/extendedUI/d$6;->a:Lcn/nubia/camera/extendedUI/d;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcn/nubia/camera/extendedUI/d;->a(Lcn/nubia/camera/extendedUI/d;Z)Z

    const/4 p1, 0x1

    return p1
.end method
