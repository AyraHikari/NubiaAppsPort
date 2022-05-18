.class Lcn/nubia/camera/ao/h$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ao/h;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ao/h;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ao/h;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcn/nubia/camera/ao/h$5;->a:Lcn/nubia/camera/ao/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 347
    iget-object p2, p0, Lcn/nubia/camera/ao/h$5;->a:Lcn/nubia/camera/ao/h;

    invoke-static {p2}, Lcn/nubia/camera/ao/h;->f(Lcn/nubia/camera/ao/h;)Lcn/nubia/camera/n/b;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/n/b;->f()I

    move-result p2

    .line 348
    iget-object v0, p0, Lcn/nubia/camera/ao/h$5;->a:Lcn/nubia/camera/ao/h;

    invoke-static {v0}, Lcn/nubia/camera/ao/h;->g(Lcn/nubia/camera/ao/h;)Lcom/android/preference/ListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/ao/h$5;->a:Lcn/nubia/camera/ao/h;

    iget-object v1, v1, Lcn/nubia/camera/ao/h;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcn/nubia/camera/ao/h$5;->a:Lcn/nubia/camera/ao/h;

    invoke-static {v0}, Lcn/nubia/camera/ao/h;->g(Lcn/nubia/camera/ao/h;)Lcom/android/preference/ListPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/preference/ListPreference;->a(I)V

    .line 351
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/nubia/camera/ao/h$5;->a:Lcn/nubia/camera/ao/h;

    iget-object v1, v1, Lcn/nubia/camera/ao/h;->b:Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 353
    iget-object v0, p0, Lcn/nubia/camera/ao/h$5;->a:Lcn/nubia/camera/ao/h;

    invoke-static {v0}, Lcn/nubia/camera/ao/h;->g(Lcn/nubia/camera/ao/h;)Lcom/android/preference/ListPreference;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/ao/h$5;->a:Lcn/nubia/camera/ao/h;

    iget-object v1, v1, Lcn/nubia/camera/ao/h;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/camera/ao/d;->a(Lcom/android/preference/ListPreference;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcn/nubia/camera/ao/h$5;->a:Lcn/nubia/camera/ao/h;

    invoke-static {v0}, Lcn/nubia/camera/ao/h;->h(Lcn/nubia/camera/ao/h;)V

    .line 355
    iget-object v0, p0, Lcn/nubia/camera/ao/h$5;->a:Lcn/nubia/camera/ao/h;

    invoke-static {v0}, Lcn/nubia/camera/ao/h;->f(Lcn/nubia/camera/ao/h;)Lcn/nubia/camera/n/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/nubia/camera/n/b;->b(I)V

    .line 356
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
