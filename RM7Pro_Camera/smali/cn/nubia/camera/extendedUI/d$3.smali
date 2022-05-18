.class Lcn/nubia/camera/extendedUI/d$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 303
    iput-object p1, p0, Lcn/nubia/camera/extendedUI/d$3;->a:Lcn/nubia/camera/extendedUI/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 306
    iget-object p2, p0, Lcn/nubia/camera/extendedUI/d$3;->a:Lcn/nubia/camera/extendedUI/d;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcn/nubia/camera/extendedUI/d;->a(Lcn/nubia/camera/extendedUI/d;Z)Z

    .line 307
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "torch: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/camera/extendedUI/d$3;->a:Lcn/nubia/camera/extendedUI/d;

    invoke-static {v0}, Lcn/nubia/camera/extendedUI/d;->k(Lcn/nubia/camera/extendedUI/d;)Lcom/android/preference/IconListPreference;

    move-result-object v0

    const-string v1, "torch"

    invoke-virtual {v0, v1}, Lcom/android/preference/IconListPreference;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PopupFlashButton"

    invoke-static {v0, p2}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object p2, p0, Lcn/nubia/camera/extendedUI/d$3;->a:Lcn/nubia/camera/extendedUI/d;

    invoke-static {p2}, Lcn/nubia/camera/extendedUI/d;->l(Lcn/nubia/camera/extendedUI/d;)Lcom/android/preference/IconListPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/preference/IconListPreference;->d(Ljava/lang/String;)I

    move-result v0

    invoke-static {p2, v0}, Lcn/nubia/camera/extendedUI/d;->c(Lcn/nubia/camera/extendedUI/d;I)V

    .line 309
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
