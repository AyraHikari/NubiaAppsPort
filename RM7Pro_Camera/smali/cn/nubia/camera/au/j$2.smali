.class Lcn/nubia/camera/au/j$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/au/j;->a(Lcom/android/preference/PreferenceGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/au/j;


# direct methods
.method constructor <init>(Lcn/nubia/camera/au/j;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcn/nubia/camera/au/j$2;->a:Lcn/nubia/camera/au/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 266
    iget-object v0, p0, Lcn/nubia/camera/au/j$2;->a:Lcn/nubia/camera/au/j;

    invoke-static {v0}, Lcn/nubia/camera/au/j;->c(Lcn/nubia/camera/au/j;)Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    const/16 v1, 0x8

    const-string v2, "StarTrackViewsManager"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 271
    iget-object v0, p0, Lcn/nubia/camera/au/j$2;->a:Lcn/nubia/camera/au/j;

    invoke-static {v0}, Lcn/nubia/camera/au/j;->c(Lcn/nubia/camera/au/j;)Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "StarTrackViewsManager"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    return-void
.end method
