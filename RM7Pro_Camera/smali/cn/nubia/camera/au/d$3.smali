.class Lcn/nubia/camera/au/d$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/au/d;->i_()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/preference/IconListPreference;

.field final synthetic b:Lcn/nubia/camera/au/d;


# direct methods
.method constructor <init>(Lcn/nubia/camera/au/d;Lcom/android/preference/IconListPreference;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcn/nubia/camera/au/d$3;->b:Lcn/nubia/camera/au/d;

    iput-object p2, p0, Lcn/nubia/camera/au/d$3;->a:Lcom/android/preference/IconListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 212
    iget-object v0, p0, Lcn/nubia/camera/au/d$3;->b:Lcn/nubia/camera/au/d;

    const v1, 0x7f0f03bd

    invoke-virtual {v0, v1}, Lcn/nubia/camera/au/d;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/au/d$3;->a:Lcom/android/preference/IconListPreference;

    invoke-virtual {v1}, Lcom/android/preference/IconListPreference;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcn/nubia/camera/au/d$3;->b:Lcn/nubia/camera/au/d;

    const v1, 0x7f0f01a3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/au/d$3;->b:Lcn/nubia/camera/au/d;

    const v1, 0x7f0f019f

    :goto_0
    invoke-virtual {v0, v1}, Lcn/nubia/camera/au/d;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcn/nubia/camera/au/d$3;->a:Lcom/android/preference/IconListPreference;

    invoke-virtual {v2}, Lcom/android/preference/IconListPreference;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;I)V

    return-void
.end method
