.class Lcn/nubia/camera/a/a$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/aq/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/a/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/a/a;)V
    .locals 0

    .line 1502
    iput-object p1, p0, Lcn/nubia/camera/a/a$9;->a:Lcn/nubia/camera/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/camera/af/b;Lcom/android/preference/PreferenceGroup;)V
    .locals 0

    .line 1505
    iget-object p1, p0, Lcn/nubia/camera/a/a$9;->a:Lcn/nubia/camera/a/a;

    invoke-static {p1}, Lcn/nubia/camera/a/a;->g(Lcn/nubia/camera/a/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1506
    iget-object p1, p0, Lcn/nubia/camera/a/a$9;->a:Lcn/nubia/camera/a/a;

    invoke-static {p1}, Lcn/nubia/camera/a/a;->h(Lcn/nubia/camera/a/a;)V

    :cond_0
    return-void
.end method
