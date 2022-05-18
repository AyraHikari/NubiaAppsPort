.class Lcn/nubia/camera/w/a$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/prosetting/ui/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/w/a;->o(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/w/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/w/a;)V
    .locals 0

    .line 682
    iput-object p1, p0, Lcn/nubia/camera/w/a$7;->a:Lcn/nubia/camera/w/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .line 685
    iget-object v0, p0, Lcn/nubia/camera/w/a$7;->a:Lcn/nubia/camera/w/a;

    invoke-static {v0}, Lcn/nubia/camera/w/a;->d(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/preference/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_star_number_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 686
    iget-object v0, p0, Lcn/nubia/camera/w/a$7;->a:Lcn/nubia/camera/w/a;

    invoke-static {v0}, Lcn/nubia/camera/w/a;->B(Lcn/nubia/camera/w/a;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/w/a$7;->a:Lcn/nubia/camera/w/a;

    invoke-static {v1}, Lcn/nubia/camera/w/a;->d(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/w/d;->S(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 687
    iget-object v0, p0, Lcn/nubia/camera/w/a$7;->a:Lcn/nubia/camera/w/a;

    sget-object v1, Lcn/nubia/camera/w/b;->m:Lcn/nubia/camera/w/b;

    iget-object v2, p0, Lcn/nubia/camera/w/a$7;->a:Lcn/nubia/camera/w/a;

    invoke-static {v2}, Lcn/nubia/camera/w/a;->d(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/camera/w/d;->S(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/a;Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    .line 688
    iget-object v0, p0, Lcn/nubia/camera/w/a$7;->a:Lcn/nubia/camera/w/a;

    sget-object v1, Lcn/nubia/camera/w/b;->m:Lcn/nubia/camera/w/b;

    invoke-static {v0, v1, p1}, Lcn/nubia/camera/w/a;->b(Lcn/nubia/camera/w/a;Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    .line 689
    iget-object p1, p0, Lcn/nubia/camera/w/a$7;->a:Lcn/nubia/camera/w/a;

    invoke-static {p1}, Lcn/nubia/camera/w/a;->C(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/prosetting/ui/NumberView;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/a;Lcn/nubia/camera/prosetting/ui/b;)V

    return-void
.end method
