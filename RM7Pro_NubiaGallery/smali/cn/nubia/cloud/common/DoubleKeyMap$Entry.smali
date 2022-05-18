.class public Lcn/nubia/cloud/common/DoubleKeyMap$Entry;
.super Ljava/lang/Object;
.source "DoubleKeyMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/common/DoubleKeyMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FirstKey:",
        "Ljava/lang/Object;",
        "SecondKey:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final firstKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFirstKey;"
        }
    .end annotation
.end field

.field public final secondKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSecondKey;"
        }
    .end annotation
.end field

.field public final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TValue;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFirstKey;TSecondKey;TValue;)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcn/nubia/cloud/common/DoubleKeyMap$Entry;->firstKey:Ljava/lang/Object;

    .line 67
    iput-object p2, p0, Lcn/nubia/cloud/common/DoubleKeyMap$Entry;->secondKey:Ljava/lang/Object;

    .line 68
    iput-object p3, p0, Lcn/nubia/cloud/common/DoubleKeyMap$Entry;->value:Ljava/lang/Object;

    return-void
.end method
