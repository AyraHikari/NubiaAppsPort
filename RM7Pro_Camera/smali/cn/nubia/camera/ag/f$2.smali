.class Lcn/nubia/camera/ag/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ag/f;->i_()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ag/f;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ag/f;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcn/nubia/camera/ag/f$2;->a:Lcn/nubia/camera/ag/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 151
    iget-object v0, p0, Lcn/nubia/camera/ag/f$2;->a:Lcn/nubia/camera/ag/f;

    invoke-static {v0}, Lcn/nubia/camera/ag/f;->b(Lcn/nubia/camera/ag/f;)Lcn/nubia/camera/ag/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ag/d;->m()V

    return-void
.end method
