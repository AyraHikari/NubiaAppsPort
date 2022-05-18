.class public Lcn/nubia/nubiaimage3d/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/nubiaimage3d/e$a;
    }
.end annotation


# instance fields
.field public a:Lcn/nubia/nubiaimage3d/e$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcn/nubia/nubiaimage3d/e$a;

    invoke-direct {v0, p0}, Lcn/nubia/nubiaimage3d/e$a;-><init>(Lcn/nubia/nubiaimage3d/e;)V

    iput-object v0, p0, Lcn/nubia/nubiaimage3d/e;->a:Lcn/nubia/nubiaimage3d/e$a;

    return-void
.end method
