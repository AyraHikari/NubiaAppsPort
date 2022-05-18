.class Lcn/nubia/camera/aj/e$5;
.super Lcn/nubia/camera/g/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aj/e;->i_()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aj/e;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aj/e;Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V
    .locals 0

    .line 632
    iput-object p1, p0, Lcn/nubia/camera/aj/e$5;->a:Lcn/nubia/camera/aj/e;

    invoke-direct {p0, p2, p3}, Lcn/nubia/camera/g/b;-><init>(Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 635
    invoke-super {p0}, Lcn/nubia/camera/g/b;->a()V

    .line 636
    iget-object v0, p0, Lcn/nubia/camera/aj/e$5;->a:Lcn/nubia/camera/aj/e;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/nubia/camera/aj/e;->a(Lcn/nubia/camera/aj/e;ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcn/nubia/camera/aj/e$5;->a:Lcn/nubia/camera/aj/e;

    const v3, 0x7f0f01a3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aj/e$5;->a:Lcn/nubia/camera/aj/e;

    const v3, 0x7f0f019f

    :goto_0
    invoke-virtual {v0, v3}, Lcn/nubia/camera/aj/e;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcn/nubia/camera/aj/e$5;->a:Lcn/nubia/camera/aj/e;

    const v5, 0x7f0f0227

    invoke-virtual {v4, v5}, Lcn/nubia/camera/aj/e;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 638
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;I)V

    .line 640
    iget-object v0, p0, Lcn/nubia/camera/aj/e$5;->a:Lcn/nubia/camera/aj/e;

    invoke-static {v0, v2, v1}, Lcn/nubia/camera/aj/e;->b(Lcn/nubia/camera/aj/e;ZZ)V

    .line 642
    iget-object v0, p0, Lcn/nubia/camera/aj/e$5;->a:Lcn/nubia/camera/aj/e;

    invoke-virtual {v0}, Lcn/nubia/camera/aj/e;->O()V

    return-void
.end method
