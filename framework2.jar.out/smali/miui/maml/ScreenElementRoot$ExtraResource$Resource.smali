.class Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;
.super Lmiui/maml/ScreenElementRoot$ExtraResource$Metrics;
.source "ScreenElementRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ScreenElementRoot$ExtraResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Resource"
.end annotation


# instance fields
.field mPath:Ljava/lang/String;

.field mScale:F

.field final synthetic this$0:Lmiui/maml/ScreenElementRoot$ExtraResource;


# direct methods
.method constructor <init>(Lmiui/maml/ScreenElementRoot$ExtraResource;)V
    .locals 0

    .prologue
    .line 674
    iput-object p1, p0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->this$0:Lmiui/maml/ScreenElementRoot$ExtraResource;

    invoke-direct {p0, p1}, Lmiui/maml/ScreenElementRoot$ExtraResource$Metrics;-><init>(Lmiui/maml/ScreenElementRoot$ExtraResource;)V

    return-void
.end method
