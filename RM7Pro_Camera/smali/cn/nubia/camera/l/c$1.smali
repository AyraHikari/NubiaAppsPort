.class Lcn/nubia/camera/l/c$1;
.super Lcn/nubia/camera/g/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/l/c;->i_()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/l/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/l/c;Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcn/nubia/camera/l/c$1;->a:Lcn/nubia/camera/l/c;

    invoke-direct {p0, p2, p3}, Lcn/nubia/camera/g/b;-><init>(Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 179
    invoke-super {p0}, Lcn/nubia/camera/g/b;->a()V

    .line 180
    iget-object v0, p0, Lcn/nubia/camera/l/c$1;->a:Lcn/nubia/camera/l/c;

    invoke-static {v0}, Lcn/nubia/camera/l/c;->a(Lcn/nubia/camera/l/c;)Lcn/nubia/camera/l/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/l/e;->k()V

    return-void
.end method
