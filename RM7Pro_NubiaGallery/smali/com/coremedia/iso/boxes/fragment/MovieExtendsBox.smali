.class public Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;
.super Lcom/googlecode/mp4parser/AbstractContainerBox;
.source "MovieExtendsBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "mvex"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "mvex"

    .line 29
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V

    return-void
.end method
