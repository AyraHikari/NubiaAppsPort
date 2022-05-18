.class Lcn/nubia/camera/hitchcock/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/q/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/hitchcock/e;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/hitchcock/e;


# direct methods
.method constructor <init>(Lcn/nubia/camera/hitchcock/e;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcn/nubia/camera/hitchcock/e$2;->a:Lcn/nubia/camera/hitchcock/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    .line 156
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/e$2;->a:Lcn/nubia/camera/hitchcock/e;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/e;->b(Lcn/nubia/camera/hitchcock/e;)Lcom/android/preference/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/hitchcock/e$2;->a:Lcn/nubia/camera/hitchcock/e;

    const v2, 0x7f0f0240

    invoke-virtual {v1, v2}, Lcn/nubia/camera/hitchcock/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_hitchcock_mode_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hitchcock_mode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
