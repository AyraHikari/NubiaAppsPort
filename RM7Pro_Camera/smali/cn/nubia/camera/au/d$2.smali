.class Lcn/nubia/camera/au/d$2;
.super Lcn/nubia/camera/g/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/au/d;->i_()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/au/d;


# direct methods
.method constructor <init>(Lcn/nubia/camera/au/d;Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcn/nubia/camera/au/d$2;->a:Lcn/nubia/camera/au/d;

    invoke-direct {p0, p2, p3}, Lcn/nubia/camera/g/b;-><init>(Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 194
    iget-object v0, p0, Lcn/nubia/camera/au/d$2;->a:Lcn/nubia/camera/au/d;

    invoke-static {v0}, Lcn/nubia/camera/au/d;->a(Lcn/nubia/camera/au/d;)Lcn/nubia/camera/au/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/au/a;->l()V

    .line 195
    iget-object v0, p0, Lcn/nubia/camera/au/d$2;->a:Lcn/nubia/camera/au/d;

    invoke-static {v0}, Lcn/nubia/camera/au/d;->a(Lcn/nubia/camera/au/d;)Lcn/nubia/camera/au/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/au/a;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcn/nubia/camera/au/d$2;->a:Lcn/nubia/camera/au/d;

    invoke-static {v0}, Lcn/nubia/camera/au/d;->a(Lcn/nubia/camera/au/d;)Lcn/nubia/camera/au/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/au/a;->o()V

    :cond_0
    return-void
.end method
