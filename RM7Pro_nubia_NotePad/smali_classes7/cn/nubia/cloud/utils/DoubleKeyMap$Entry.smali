.class Lcn/nubia/cloud/utils/DoubleKeyMap$Entry;
.super Ljava/lang/Object;
.source "DoubleKeyMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/utils/DoubleKeyMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
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

    .prologue
    .line 102
    .local p0, "this":Lcn/nubia/cloud/utils/DoubleKeyMap$Entry;, "Lcn/nubia/cloud/utils/DoubleKeyMap$Entry<TFirstKey;TSecondKey;TValue;>;"
    .local p1, "firstKey":Ljava/lang/Object;, "TFirstKey;"
    .local p2, "secondKey":Ljava/lang/Object;, "TSecondKey;"
    .local p3, "value":Ljava/lang/Object;, "TValue;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcn/nubia/cloud/utils/DoubleKeyMap$Entry;->firstKey:Ljava/lang/Object;

    .line 104
    iput-object p2, p0, Lcn/nubia/cloud/utils/DoubleKeyMap$Entry;->secondKey:Ljava/lang/Object;

    .line 105
    iput-object p3, p0, Lcn/nubia/cloud/utils/DoubleKeyMap$Entry;->value:Ljava/lang/Object;

    .line 106
    return-void
.end method
