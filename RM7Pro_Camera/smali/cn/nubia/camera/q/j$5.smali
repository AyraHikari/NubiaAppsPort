.class Lcn/nubia/camera/q/j$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/aq/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Lcom/android/common/c/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/q/j;


# direct methods
.method constructor <init>(Lcn/nubia/camera/q/j;)V
    .locals 0

    .line 909
    iput-object p1, p0, Lcn/nubia/camera/q/j$5;->a:Lcn/nubia/camera/q/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/camera/af/b;Lcom/android/preference/PreferenceGroup;)V
    .locals 1

    .line 912
    iget-object v0, p0, Lcn/nubia/camera/q/j$5;->a:Lcn/nubia/camera/q/j;

    invoke-static {v0}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/af/b;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 914
    iget-object p1, p0, Lcn/nubia/camera/q/j$5;->a:Lcn/nubia/camera/q/j;

    invoke-static {p1}, Lcn/nubia/camera/q/j;->d(Lcn/nubia/camera/q/j;)Lcom/android/setting/e;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/q/j$5;->a:Lcn/nubia/camera/q/j;

    invoke-static {p2}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/q/j;)Lcn/nubia/camera/ad/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/setting/e;->a(Lcom/android/preference/PreferenceGroup;)V

    :cond_0
    return-void
.end method
