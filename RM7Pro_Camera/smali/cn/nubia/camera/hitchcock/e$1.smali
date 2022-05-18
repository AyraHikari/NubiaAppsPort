.class Lcn/nubia/camera/hitchcock/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/hitchcock/e;->i_()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/preference/IconListPreference;

.field final synthetic b:Lcn/nubia/camera/hitchcock/e;


# direct methods
.method constructor <init>(Lcn/nubia/camera/hitchcock/e;Lcom/android/preference/IconListPreference;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcn/nubia/camera/hitchcock/e$1;->b:Lcn/nubia/camera/hitchcock/e;

    iput-object p2, p0, Lcn/nubia/camera/hitchcock/e$1;->a:Lcom/android/preference/IconListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/e$1;->a:Lcom/android/preference/IconListPreference;

    invoke-virtual {v0}, Lcom/android/preference/IconListPreference;->k()Ljava/lang/String;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/e$1;->b:Lcn/nubia/camera/hitchcock/e;

    invoke-static {v1}, Lcn/nubia/camera/hitchcock/e;->a(Lcn/nubia/camera/hitchcock/e;)Lcn/nubia/camera/hitchcock/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/camera/hitchcock/c;->a(Ljava/lang/String;)V

    return-void
.end method
