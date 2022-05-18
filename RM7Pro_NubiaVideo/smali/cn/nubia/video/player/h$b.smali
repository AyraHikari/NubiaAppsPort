.class Lcn/nubia/video/player/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/video/player/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/player/h;


# direct methods
.method private constructor <init>(Lcn/nubia/video/player/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/h$b;->a:Lcn/nubia/video/player/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/video/player/h;Lcn/nubia/video/player/h$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcn/nubia/video/player/h$b;-><init>(Lcn/nubia/video/player/h;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/h$b;->a:Lcn/nubia/video/player/h;

    invoke-static {v0}, Lcn/nubia/video/player/h;->k(Lcn/nubia/video/player/h;)Lcn/nubia/video/player/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/video/player/q;->k(I)V

    return-void
.end method
