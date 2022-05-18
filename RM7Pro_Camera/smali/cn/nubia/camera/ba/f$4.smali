.class Lcn/nubia/camera/ba/f$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ba/f;->a(Ljava/lang/String;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Z

.field final synthetic e:Lcn/nubia/camera/ba/f;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ba/f;Ljava/lang/String;IIZ)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcn/nubia/camera/ba/f$4;->e:Lcn/nubia/camera/ba/f;

    iput-object p2, p0, Lcn/nubia/camera/ba/f$4;->a:Ljava/lang/String;

    iput p3, p0, Lcn/nubia/camera/ba/f$4;->b:I

    iput p4, p0, Lcn/nubia/camera/ba/f$4;->c:I

    iput-boolean p5, p0, Lcn/nubia/camera/ba/f$4;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 428
    iget-object v0, p0, Lcn/nubia/camera/ba/f$4;->e:Lcn/nubia/camera/ba/f;

    iget-object v1, p0, Lcn/nubia/camera/ba/f$4;->a:Ljava/lang/String;

    iget v2, p0, Lcn/nubia/camera/ba/f$4;->b:I

    iget v3, p0, Lcn/nubia/camera/ba/f$4;->c:I

    iget-boolean v4, p0, Lcn/nubia/camera/ba/f$4;->d:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcn/nubia/camera/ba/f;->a(Lcn/nubia/camera/ba/f;Ljava/lang/String;IIZ)V

    return-void
.end method
