.class Lcn/nubia/camera/hitchcock/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/hitchcock/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/hitchcock/c;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/hitchcock/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/hitchcock/c;)V
    .locals 0

    .line 781
    iput-object p1, p0, Lcn/nubia/camera/hitchcock/c$3;->a:Lcn/nubia/camera/hitchcock/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "HitchcockFragment"

    const-string v1, "onFinish"

    .line 789
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method
