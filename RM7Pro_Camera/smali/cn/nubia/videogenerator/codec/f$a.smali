.class Lcn/nubia/videogenerator/codec/f$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/videogenerator/codec/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/videogenerator/codec/f;


# direct methods
.method private constructor <init>(Lcn/nubia/videogenerator/codec/f;)V
    .locals 0

    .line 413
    iput-object p1, p0, Lcn/nubia/videogenerator/codec/f$a;->a:Lcn/nubia/videogenerator/codec/f;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/videogenerator/codec/f;Lcn/nubia/videogenerator/codec/f$1;)V
    .locals 0

    .line 413
    invoke-direct {p0, p1}, Lcn/nubia/videogenerator/codec/f$a;-><init>(Lcn/nubia/videogenerator/codec/f;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 416
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/f$a;->a:Lcn/nubia/videogenerator/codec/f;

    invoke-static {v0}, Lcn/nubia/videogenerator/codec/f;->a(Lcn/nubia/videogenerator/codec/f;)V

    return-void
.end method
