.class Lcn/nubia/videogenerator/codec/e$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/videogenerator/codec/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/videogenerator/codec/e;


# direct methods
.method private constructor <init>(Lcn/nubia/videogenerator/codec/e;)V
    .locals 0

    .line 653
    iput-object p1, p0, Lcn/nubia/videogenerator/codec/e$a;->a:Lcn/nubia/videogenerator/codec/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/videogenerator/codec/e;Lcn/nubia/videogenerator/codec/e$1;)V
    .locals 0

    .line 653
    invoke-direct {p0, p1}, Lcn/nubia/videogenerator/codec/e$a;-><init>(Lcn/nubia/videogenerator/codec/e;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 655
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/e$a;->a:Lcn/nubia/videogenerator/codec/e;

    invoke-static {v0}, Lcn/nubia/videogenerator/codec/e;->a(Lcn/nubia/videogenerator/codec/e;)V

    return-void
.end method
