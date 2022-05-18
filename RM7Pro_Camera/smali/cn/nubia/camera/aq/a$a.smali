.class Lcn/nubia/camera/aq/a$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/aq/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/util/ArrayList<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/lang/Void;",
        "Lcom/android/preference/PreferenceGroup;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aq/a;

.field private b:Lcn/nubia/camera/af/b;

.field private c:Landroid/hardware/camera2/CameraCharacteristics;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/aq/a;Lcn/nubia/camera/af/b;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcn/nubia/camera/aq/a$a;->a:Lcn/nubia/camera/aq/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 436
    iput-object p2, p0, Lcn/nubia/camera/aq/a$a;->b:Lcn/nubia/camera/af/b;

    .line 437
    iput-object p3, p0, Lcn/nubia/camera/aq/a$a;->c:Landroid/hardware/camera2/CameraCharacteristics;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/util/ArrayList;)Lcom/android/preference/PreferenceGroup;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/preference/PreferenceGroup;"
        }
    .end annotation

    const/4 p1, 0x0

    .line 443
    invoke-static {p1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 444
    iget-object v0, p0, Lcn/nubia/camera/aq/a$a;->a:Lcn/nubia/camera/aq/a;

    invoke-static {v0}, Lcn/nubia/camera/aq/a;->b(Lcn/nubia/camera/aq/a;)Lcom/android/preference/e;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aq/a$a;->a:Lcn/nubia/camera/aq/a;

    invoke-static {v1}, Lcn/nubia/camera/aq/a;->a(Lcn/nubia/camera/aq/a;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/preference/e;->a(ILandroid/content/SharedPreferences;)Lcom/android/preference/a;

    move-result-object p1

    check-cast p1, Lcom/android/preference/PreferenceGroup;

    .line 445
    invoke-virtual {p0}, Lcn/nubia/camera/aq/a$a;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x1

    .line 448
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/aq/a$a;->a:Lcn/nubia/camera/aq/a;

    invoke-static {v2}, Lcn/nubia/camera/aq/a;->a(Lcn/nubia/camera/aq/a;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 449
    invoke-virtual {p0}, Lcn/nubia/camera/aq/a$a;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 452
    :cond_1
    iget-object v2, p0, Lcn/nubia/camera/aq/a$a;->a:Lcn/nubia/camera/aq/a;

    invoke-static {v2}, Lcn/nubia/camera/aq/a;->b(Lcn/nubia/camera/aq/a;)Lcom/android/preference/e;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/aq/a$a;->a:Lcn/nubia/camera/aq/a;

    invoke-static {v3}, Lcn/nubia/camera/aq/a;->a(Lcn/nubia/camera/aq/a;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/android/preference/e;->a(ILandroid/content/SharedPreferences;)Lcom/android/preference/a;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/preference/PreferenceGroup;->a(Lcom/android/preference/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method protected a(Lcom/android/preference/PreferenceGroup;)V
    .locals 3

    .line 459
    iget-object v0, p0, Lcn/nubia/camera/aq/a$a;->a:Lcn/nubia/camera/aq/a;

    iget-object v1, p0, Lcn/nubia/camera/aq/a$a;->b:Lcn/nubia/camera/af/b;

    iget-object v2, p0, Lcn/nubia/camera/aq/a$a;->c:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v0, v1, p1, v2}, Lcn/nubia/camera/aq/a;->a(Lcn/nubia/camera/aq/a;Lcn/nubia/camera/af/b;Lcom/android/preference/PreferenceGroup;Landroid/hardware/camera2/CameraCharacteristics;)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 431
    check-cast p1, [Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/aq/a$a;->a([Ljava/util/ArrayList;)Lcom/android/preference/PreferenceGroup;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 431
    check-cast p1, Lcom/android/preference/PreferenceGroup;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/aq/a$a;->a(Lcom/android/preference/PreferenceGroup;)V

    return-void
.end method
