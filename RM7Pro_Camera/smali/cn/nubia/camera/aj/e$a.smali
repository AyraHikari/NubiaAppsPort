.class Lcn/nubia/camera/aj/e$a;
.super Lcn/nubia/camera/g/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/aj/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/android/preference/IconListPreference;

.field final synthetic b:Lcn/nubia/camera/aj/e;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aj/e;Lcom/android/preference/IconListPreference;Lcn/nubia/camera/ad/a;)V
    .locals 0

    .line 704
    iput-object p1, p0, Lcn/nubia/camera/aj/e$a;->b:Lcn/nubia/camera/aj/e;

    .line 705
    invoke-direct {p0, p2, p3}, Lcn/nubia/camera/g/b;-><init>(Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    .line 706
    iput-object p2, p0, Lcn/nubia/camera/aj/e$a;->a:Lcom/android/preference/IconListPreference;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 711
    invoke-super {p0}, Lcn/nubia/camera/g/b;->a()V

    .line 713
    iget-object v0, p0, Lcn/nubia/camera/aj/e$a;->b:Lcn/nubia/camera/aj/e;

    iget-object v1, p0, Lcn/nubia/camera/aj/e$a;->a:Lcom/android/preference/IconListPreference;

    invoke-static {v0, v1}, Lcn/nubia/camera/aj/e;->a(Lcn/nubia/camera/aj/e;Lcom/android/preference/IconListPreference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcn/nubia/camera/aj/e$a;->b:Lcn/nubia/camera/aj/e;

    const v1, 0x7f0f01a3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aj/e$a;->b:Lcn/nubia/camera/aj/e;

    const v1, 0x7f0f019f

    :goto_0
    invoke-virtual {v0, v1}, Lcn/nubia/camera/aj/e;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcn/nubia/camera/aj/e$a;->b:Lcn/nubia/camera/aj/e;

    const v4, 0x7f0f0263

    invoke-virtual {v3, v4}, Lcn/nubia/camera/aj/e;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 716
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;I)V

    .line 719
    iget-object v0, p0, Lcn/nubia/camera/aj/e$a;->b:Lcn/nubia/camera/aj/e;

    invoke-static {v0}, Lcn/nubia/camera/aj/e;->g(Lcn/nubia/camera/aj/e;)Lcn/nubia/camera/aj/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/aj/h;->k()V

    .line 721
    iget-object v0, p0, Lcn/nubia/camera/aj/e$a;->b:Lcn/nubia/camera/aj/e;

    invoke-static {v0, v1, v4}, Lcn/nubia/camera/aj/e;->b(Lcn/nubia/camera/aj/e;ZZ)V

    return-void
.end method
