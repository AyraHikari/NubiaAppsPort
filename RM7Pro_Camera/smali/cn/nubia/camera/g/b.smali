.class public Lcn/nubia/camera/g/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/k$a;


# instance fields
.field private a:Lcom/android/preference/ListPreference;

.field private b:Lcn/nubia/camera/ad/a;


# direct methods
.method public constructor <init>(Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcn/nubia/camera/g/b;->a:Lcom/android/preference/ListPreference;

    .line 15
    iput-object p2, p0, Lcn/nubia/camera/g/b;->b:Lcn/nubia/camera/ad/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 20
    iget-object v0, p0, Lcn/nubia/camera/g/b;->a:Lcom/android/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 21
    iget-object v1, p0, Lcn/nubia/camera/g/b;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/g/b;->a:Lcom/android/preference/ListPreference;

    invoke-virtual {v2}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcn/nubia/camera/ba/g;->b(Lcn/nubia/camera/ad/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcn/nubia/camera/g/b;->b:Lcn/nubia/camera/ad/a;

    iget-object v1, p0, Lcn/nubia/camera/g/b;->a:Lcom/android/preference/ListPreference;

    invoke-virtual {v1}, Lcom/android/preference/ListPreference;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/g/b;->a:Lcom/android/preference/ListPreference;

    invoke-virtual {v2}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/camera/ba/g;->a(Lcn/nubia/camera/ad/a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
