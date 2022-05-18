.class Lcn/nubia/camera/av/b$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/av/b$3;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/av/b$3;


# direct methods
.method constructor <init>(Lcn/nubia/camera/av/b$3;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcn/nubia/camera/av/b$3$1;->a:Lcn/nubia/camera/av/b$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 217
    iget-object p1, p0, Lcn/nubia/camera/av/b$3$1;->a:Lcn/nubia/camera/av/b$3;

    iget-object p1, p1, Lcn/nubia/camera/av/b$3;->a:Lcn/nubia/camera/av/b;

    invoke-static {p1}, Lcn/nubia/camera/av/b;->b(Lcn/nubia/camera/av/b;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/preference/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/av/b$3$1;->a:Lcn/nubia/camera/av/b$3;

    iget-object p2, p2, Lcn/nubia/camera/av/b$3;->a:Lcn/nubia/camera/av/b;

    const v0, 0x7f0f02ab

    invoke-static {p2, v0}, Lcn/nubia/camera/av/b;->a(Lcn/nubia/camera/av/b;I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "pref_storage_path"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 218
    iget-object p1, p0, Lcn/nubia/camera/av/b$3$1;->a:Lcn/nubia/camera/av/b$3;

    iget-object p1, p1, Lcn/nubia/camera/av/b$3;->a:Lcn/nubia/camera/av/b;

    invoke-static {p1}, Lcn/nubia/camera/av/b;->a(Lcn/nubia/camera/av/b;)V

    return-void
.end method
