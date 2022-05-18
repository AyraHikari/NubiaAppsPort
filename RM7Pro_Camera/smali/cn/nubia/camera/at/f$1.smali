.class Lcn/nubia/camera/at/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/at/f;->i_()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/preference/IconListPreference;

.field final synthetic b:Lcn/nubia/camera/at/f;


# direct methods
.method constructor <init>(Lcn/nubia/camera/at/f;Lcom/android/preference/IconListPreference;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcn/nubia/camera/at/f$1;->b:Lcn/nubia/camera/at/f;

    iput-object p2, p0, Lcn/nubia/camera/at/f$1;->a:Lcom/android/preference/IconListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 152
    iget-object v0, p0, Lcn/nubia/camera/at/f$1;->b:Lcn/nubia/camera/at/f;

    const v1, 0x7f0f030b

    invoke-virtual {v0, v1}, Lcn/nubia/camera/at/f;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/at/f$1;->a:Lcom/android/preference/IconListPreference;

    invoke-virtual {v1}, Lcom/android/preference/IconListPreference;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcn/nubia/camera/at/f$1;->b:Lcn/nubia/camera/at/f;

    const v1, 0x7f0f01a3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/at/f$1;->b:Lcn/nubia/camera/at/f;

    const v1, 0x7f0f019f

    :goto_0
    invoke-virtual {v0, v1}, Lcn/nubia/camera/at/f;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcn/nubia/camera/at/f$1;->a:Lcom/android/preference/IconListPreference;

    invoke-virtual {v2}, Lcom/android/preference/IconListPreference;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;I)V

    .line 156
    iget-object v0, p0, Lcn/nubia/camera/at/f$1;->b:Lcn/nubia/camera/at/f;

    invoke-static {v0}, Lcn/nubia/camera/at/f;->a(Lcn/nubia/camera/at/f;)Lcn/nubia/camera/at/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/at/e;->e()V

    return-void
.end method
