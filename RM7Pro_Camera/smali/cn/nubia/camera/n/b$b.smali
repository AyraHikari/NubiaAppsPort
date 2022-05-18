.class Lcn/nubia/camera/n/b$b;
.super Lcn/nubia/camera/f/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/n/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcn/nubia/camera/n/b;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/n/b;I)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcn/nubia/camera/n/b$b;->b:Lcn/nubia/camera/n/b;

    invoke-direct {p0}, Lcn/nubia/camera/f/a;-><init>()V

    .line 354
    iput p2, p0, Lcn/nubia/camera/n/b$b;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public b()V
    .locals 3

    .line 359
    iget-object v0, p0, Lcn/nubia/camera/n/b$b;->b:Lcn/nubia/camera/n/b;

    invoke-static {v0}, Lcn/nubia/camera/n/b;->a(Lcn/nubia/camera/n/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/n/b$b;->b:Lcn/nubia/camera/n/b;

    .line 360
    invoke-static {v0}, Lcn/nubia/camera/n/b;->j(Lcn/nubia/camera/n/b;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "EffectPageManager"

    const-string v1, "execute long click effect button"

    .line 363
    invoke-static {v0, v1}, Lcn/nubia/camera/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Lcn/nubia/camera/n/b$b;->b:Lcn/nubia/camera/n/b;

    invoke-static {v0}, Lcn/nubia/camera/n/b;->k(Lcn/nubia/camera/n/b;)Lcom/android/preference/ListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->j()[Ljava/lang/CharSequence;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/n/b$b;->a:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 366
    iget-object v1, p0, Lcn/nubia/camera/n/b$b;->b:Lcn/nubia/camera/n/b;

    invoke-static {v1}, Lcn/nubia/camera/n/b;->l(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/n/b$a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 367
    iget-object v1, p0, Lcn/nubia/camera/n/b$b;->b:Lcn/nubia/camera/n/b;

    invoke-static {v1}, Lcn/nubia/camera/n/b;->l(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/n/b$a;

    move-result-object v1

    iget v2, p0, Lcn/nubia/camera/n/b$b;->a:I

    invoke-interface {v1, v2, v0}, Lcn/nubia/camera/n/b$a;->b(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
