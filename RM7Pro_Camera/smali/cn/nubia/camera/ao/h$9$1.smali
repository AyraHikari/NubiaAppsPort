.class Lcn/nubia/camera/ao/h$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ao/h$9;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcn/nubia/camera/ao/h$9;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ao/h$9;Z)V
    .locals 0

    .line 864
    iput-object p1, p0, Lcn/nubia/camera/ao/h$9$1;->b:Lcn/nubia/camera/ao/h$9;

    iput-boolean p2, p0, Lcn/nubia/camera/ao/h$9$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 867
    iget-object v0, p0, Lcn/nubia/camera/ao/h$9$1;->b:Lcn/nubia/camera/ao/h$9;

    iget-object v0, v0, Lcn/nubia/camera/ao/h$9;->a:Lcn/nubia/camera/ao/h;

    invoke-virtual {v0}, Lcn/nubia/camera/ao/h;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 870
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/camera/ao/h$9$1;->a:Z

    if-nez v0, :cond_1

    .line 871
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/ao/h$9$1;->b:Lcn/nubia/camera/ao/h$9;

    iget-object v1, v1, Lcn/nubia/camera/ao/h$9;->a:Lcn/nubia/camera/ao/h;

    const v2, 0x7f0f0024

    invoke-virtual {v1, v2}, Lcn/nubia/camera/ao/h;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;I)V

    goto :goto_0

    .line 875
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ao/h$9$1;->b:Lcn/nubia/camera/ao/h$9;

    iget-object v0, v0, Lcn/nubia/camera/ao/h$9;->a:Lcn/nubia/camera/ao/h;

    invoke-static {v0}, Lcn/nubia/camera/ao/h;->h(Lcn/nubia/camera/ao/h;)V

    .line 876
    iget-object v0, p0, Lcn/nubia/camera/ao/h$9$1;->b:Lcn/nubia/camera/ao/h$9;

    iget-object v0, v0, Lcn/nubia/camera/ao/h$9;->a:Lcn/nubia/camera/ao/h;

    invoke-static {v0}, Lcn/nubia/camera/ao/h;->f(Lcn/nubia/camera/ao/h;)Lcn/nubia/camera/n/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/n/b;->b(Z)V

    .line 877
    iget-object v0, p0, Lcn/nubia/camera/ao/h$9$1;->b:Lcn/nubia/camera/ao/h$9;

    iget-object v0, v0, Lcn/nubia/camera/ao/h$9;->a:Lcn/nubia/camera/ao/h;

    invoke-static {v0}, Lcn/nubia/camera/ao/h;->f(Lcn/nubia/camera/ao/h;)Lcn/nubia/camera/n/b;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/ao/h$9$1;->b:Lcn/nubia/camera/ao/h$9;

    iget-object v2, v2, Lcn/nubia/camera/ao/h$9;->a:Lcn/nubia/camera/ao/h;

    invoke-static {v2}, Lcn/nubia/camera/ao/h;->g(Lcn/nubia/camera/ao/h;)Lcom/android/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/preference/ListPreference;->j()[Ljava/lang/CharSequence;

    move-result-object v2

    array-length v2, v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcn/nubia/camera/n/b;->b(I)V

    :goto_0
    return-void
.end method
