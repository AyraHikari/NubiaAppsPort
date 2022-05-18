.class Lcn/nubia/camera/clone/g$2;
.super Lcn/nubia/camera/g/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/clone/g;->i_()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/clone/g;


# direct methods
.method constructor <init>(Lcn/nubia/camera/clone/g;Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcn/nubia/camera/clone/g$2;->a:Lcn/nubia/camera/clone/g;

    invoke-direct {p0, p2, p3}, Lcn/nubia/camera/g/b;-><init>(Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 192
    invoke-super {p0}, Lcn/nubia/camera/g/b;->a()V

    .line 193
    iget-object v0, p0, Lcn/nubia/camera/clone/g$2;->a:Lcn/nubia/camera/clone/g;

    invoke-static {v0}, Lcn/nubia/camera/clone/g;->a(Lcn/nubia/camera/clone/g;)V

    return-void
.end method
