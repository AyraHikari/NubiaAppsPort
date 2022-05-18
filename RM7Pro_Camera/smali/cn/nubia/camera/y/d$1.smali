.class Lcn/nubia/camera/y/d$1;
.super Lcn/nubia/camera/g/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/y/d;->i_()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/preference/IconListPreference;

.field final synthetic b:Lcn/nubia/camera/y/d;


# direct methods
.method constructor <init>(Lcn/nubia/camera/y/d;Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;Lcom/android/preference/IconListPreference;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcn/nubia/camera/y/d$1;->b:Lcn/nubia/camera/y/d;

    iput-object p4, p0, Lcn/nubia/camera/y/d$1;->a:Lcom/android/preference/IconListPreference;

    invoke-direct {p0, p2, p3}, Lcn/nubia/camera/g/b;-><init>(Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 124
    invoke-super {p0}, Lcn/nubia/camera/g/b;->a()V

    .line 125
    iget-object v0, p0, Lcn/nubia/camera/y/d$1;->b:Lcn/nubia/camera/y/d;

    invoke-static {v0}, Lcn/nubia/camera/y/d;->a(Lcn/nubia/camera/y/d;)Lcn/nubia/camera/y/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/y/b;->l()V

    .line 126
    iget-object v0, p0, Lcn/nubia/camera/y/d$1;->b:Lcn/nubia/camera/y/d;

    invoke-static {v0}, Lcn/nubia/camera/y/d;->b(Lcn/nubia/camera/y/d;)Lcn/nubia/camera/y/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/y/f;->q()V

    .line 128
    iget-object v0, p0, Lcn/nubia/camera/y/d$1;->b:Lcn/nubia/camera/y/d;

    const v1, 0x7f0f03bd

    invoke-virtual {v0, v1}, Lcn/nubia/camera/y/d;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/y/d$1;->a:Lcom/android/preference/IconListPreference;

    invoke-virtual {v1}, Lcom/android/preference/IconListPreference;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcn/nubia/camera/y/d$1;->b:Lcn/nubia/camera/y/d;

    const v1, 0x7f0f01a3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/y/d$1;->b:Lcn/nubia/camera/y/d;

    const v1, 0x7f0f019f

    :goto_0
    invoke-virtual {v0, v1}, Lcn/nubia/camera/y/d;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcn/nubia/camera/y/d$1;->a:Lcom/android/preference/IconListPreference;

    invoke-virtual {v2}, Lcom/android/preference/IconListPreference;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;I)V

    return-void
.end method
